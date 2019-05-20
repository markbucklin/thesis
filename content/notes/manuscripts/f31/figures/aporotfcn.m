function md = aporotfcn(fname)

%% PRELIMINARY
bowl_threshold = 300;
pixelsum_threshold = 10^4;
body_size = 6;
tail_length = 20;
pixarea_exclude = 100;
frame_batch_max = 30;
tail_filter_size = 25;
tail_translate = 5;

fpath = 'C:\vr_share\ParkinsonsVideo\Apomorphine rotations\'
% fname = '46 11 Sept 13 part 2.wmv'
obj = VideoReader(fullfile(fpath,fname));
frame_batches = floor(obj.NumberOfFrames /frame_batch_max)
rawData = zeros([obj.Height obj.Width frame_batch_max],'int16');	% preallocate data storage array

% Collect sample of frames spaced over experiment for reference
sample_start = min([30 obj.NumberOfFrames]);
sampleIndices = linspace(sample_start, obj.NumberOfFrames, frame_batch_max);
tic
m=1;
for n=floor(sampleIndices)
	tic
	rawData(:,:,m) = squeeze(sum(im2int16(read(obj,n)),3));
	m=m+1;
	fprintf('\t\t(%f seconds)\n',toc)
end
background = max(rawData,[],3);
rawData = imabsdiff(rawData, repmat(background,[1 1 size(rawData,3)]));


xprof = sum(background,1) > pixelsum_threshold;
yprof = sum(background,2) > pixelsum_threshold;
bowl.xbounds = [find(xprof,1,'first') find(xprof,1,'last')];
bowl.ybounds = [find(yprof,1,'first') find(yprof,1,'last')];
bowl.diameter = diff(bowl.xbounds);
bowl.radius = round(bowl.diameter/2);
bowl.center = round([mean(bowl.xbounds) mean(bowl.ybounds)]);
x = (1:obj.Width) - bowl.center(1)-1;
y = (1:obj.Height) - bowl.center(2)-1;
[cx,cy] = pol2cart(0:pi/200:2*pi,bowl.radius);
bowlMask = roipoly(x,y,background,cx,cy);


% Determine approximate size of mouse (including tale)
rawData(repmat(~bowlMask,[1 1 size(rawData,3)])) = 0;
bwData = rawData > pixelsum_threshold;
fprintf('\nProcessing reference frames...\n')
extentF = obj.Height
for fn = 1:size(bwData,3)
	binF = bwareaopen(bwData(:,:,fn),pixarea_exclude);
	radF = sum(radon(uint8(binF),0:179),2) > 15;
	extentF(fn) = find(radF,1,'last') - find(radF,1,'first');
end
mouse_radius = round(max(extentF)/2);

% Construct a TAIL filter
% [xf,yf] = meshgrid([1:10 20 10:-1:1],[10:-1:1 1 1:10]);
% xyf90 = int8(hypot(xf,yf)-8);
% [xf,yf] = meshgrid([10:-1:1 1 1:10],[10:-1:1 1 1:10]);
% xyf45 =
for d=1:180
	seline(d) = strel('line',tail_filter_size,d);
end


%% PROCESS ALL DATA IN BATCHES
try
	bodySE = strel('disk',3*round(body_size/3));
% 	x = zeros(batch_max*frame_batches,1,'int16');
% 	y = zeros(batch_max*frame_batches,1,'int16');

	m=1;
	PD = struct.empty(frame_batches,0);
	frameStart = 1:frame_batch_max:frame_batch_max*frame_batches-1;
	parfor n = 1:frame_batches
		try
			k = frameStart(n);
			m=k:k+frame_batch_max-1;
			fprintf('\tProcessing frames: %g-%g', m(1), m(end))
			tic
			% Load batch and extract binary Form
			rawdata = squeeze(sum(im2int16(read(obj,[m(1) m(end)])),3,'native'));
			rawdata = imabsdiff(rawdata, repmat(background,[1 1 size(rawdata,3)]));
			rawdata(repmat(~bowlMask,[1 1 size(rawdata,3)])) = 0;
			bwData = rawdata > pixelsum_threshold;
			% PROCESS FRAMES IN BATCH
			r = mouse_radius;
			% 	lastBodyF = false(size(binF));
			pd = struct(...
				'x',zeros(frame_batch_max,1,'int16'),...
				'y',zeros(frame_batch_max,1,'int16'),...
				'orient',zeros(frame_batch_max,1,'int16'));
			for fn = 1:size(bwData,3)
				binF = bwareaopen(bwData(:,:,fn),pixarea_exclude);
				bodyF = imerode(binF,bodySE);
				% Find Center - fit to fattest part in along x and y axes
				[xval,x] = max(smooth(sum(int16(bodyF),1)));
				[yval,y] = max(smooth(sum(int16(bodyF),2)));
				pd.x(fn,1) = x;
				pd.y(fn,1) = y;
				% Find TAIL
				hmsum = zeros(180,1);
				location = [NaN NaN];
				tdegree = NaN;
				hitMax = 0;
				for d = 1:180
					bwhm1 = bwhitmiss(binF,seline(d),translate(seline(d),[tail_translate -tail_translate]));
					bwhm2 = bwhitmiss(binF,seline(d),translate(seline(d),[-tail_translate tail_translate]));
					bwhm = bwhm1 & bwhm2;
					if any(bwhm(:));
						hmsum(d) = sum(bwhm(:),'double');
						if(hmsum(d) > hitMax)
							pd.tail.hitMax = hmsum(d);
							pd.tail.degree = d;
							[xval,xtail] = max(smooth(sum(int16(bwhm),1)));
							[yval,ytail] = max(smooth(sum(int16(bwhm),2)));
							pd.tail.location = [xtail ytail];
						end
					end
				end
				% Find Orientation
				xVicinity = abs(nonzeros(x-r:x+r));
				xVicinity = xVicinity(xVicinity<size(binF,2));
				yVicinity = abs(nonzeros(y-r:y+r));	% controlling for index-out-of-bounds
				yVicinity = yVicinity(yVicinity<size(binF,1));
% 				radF = radon(binF(yVicinity,xVicinity),0:179);
				[mval,mdeg] = max(max(radon(bodyF(yVicinity,xVicinity),0:179)));	% previously used binF rather than bodyF
				pd.orient(fn,1) = mdeg;
			end
			PD(n).x = pd.x;
			PD(n).y = pd.y;
			PD(n).location = [pd.x pd.y];
			PD(n).orient = pd.orient;
			PD(n).tail = pd.tail;
% 			PD(n).bw = bwData;
			batchtime = toc;
			fprintf('\t\t%f seconds (%f frames/sec)\n',batchtime,frame_batch_max/batchtime)
		catch me
			keyboard
		end
	end
	clear rawData

	% SAVE DATA
	md.x = cat(1,PD(:).x);
	md.y= cat(1,PD(:).y);
	md.t = linspace(0,numel(md.x)/30,numel(md.x));
	md.theta = cat(1,PD(:).orient);
	md.dtheta = diff([theta(1); theta]);
	md.orientation = cumsum(int16(md.dtheta > 170) - int16(md.dtheta < -170))*180 + md.theta;
	md.rotation = double(md.orientation)/360;
% 	md.bw = cat(3,PD(:).bw);
	save([fname,'.mat'],'md')
catch me
% 	save('failedset','md')
	keyboard
end
