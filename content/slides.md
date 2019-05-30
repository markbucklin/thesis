---
author: Mark Bucklin
title: Development & Application of a Closed-Loop Continuous Optical Neural Interface
date: April 13, 2017
theme: 'night'
separator: <!-- s -->
verticalSeparator: <!-- v -->
---


### Development & Application of a Closed-Loop Continuous Optical Neural Interface

###### Procedures for real-time image processing, neural signal extraction, and application to closed-loop control using wide-field Ca2+ fluorescence with awake behaving animals

May 31, 2019

##### Mark Bucklin

<!-- s -->

#### Lab Contributions

- Behavior Box for spatial discrimination study
- Mouse tracking software for Parkinson's model
- Virtual Reality presentation and motion tracking on spherical treadmill
- Microscopes for fluourescence imaging
- Image acquisition software
- Video processing software

<!-- s -->

#### Outline

- Wide-field Fluourescence Microscopy to image brain activity
  - Optical and Mechanical requirements
    - cameras
    - LEDs
    - Control
  - Cranial-Implant
- Video processing: _Batch_ processing _Pipeline_
  - Feature Extraction, Stream Reduction
  - Storage issue: _Stream_ processing _Graph_
- Compression as a Universal Framework
  - ... and a biomarker

<!-- s -->

#### Imaging Brain Activity in Mice with a Wide-field Fluourescence Microscope

- Sensor: GCaMP
  - Fluourescence change when calcium enters cell
- Virus
  - Delivers the GCaMP sensor
- Blue LED
  - sensor excitation
- Optical Filters
  - excitation filter + dichroic mirror + emission filter
- scientific-CMOS Camera

<!-- s -->

#### Microscope and Mouse Behavioral Apparatus

![Widefield Microscope](img/microscope/widefield_microscope_diagram.png)<!-- {_class="reveal stretch"} -->

<!-- s -->

#### Microscope and Mouse Securing Apparatus (headplate holder)

![Headplate Holder](img/spherical-treadmill-extended/lightson_withsusie.png)<!-- {_class="reveal stretch"} -->

<!-- s -->

#### Image Processing

- Noise filtering
  - time-series decomposition
- Motion Correction
- Cell Segmentation
  - Cell signal extraction: in manageable size
    <!-- ![](img/SW-sequence-2015-07-seq02.png) -->

<!-- s -->

#### Motion Correction

- approaches to find displacement
- Lucas-Kanade iterative search
- Phase correlation, aka normalized cross correlation
- Feature Matching
  - Detect features (i.e. corners)
  - Triangulate best match

![motion Correction](img/sw-fluopro/motion_correction_sample.png)

<!-- s -->

#### Cell Segmentation

- Adaptive thresholding
- Morphological condensation
- Temporal clustering with reduced feature descriptor of cells

<!-- s -->

#### Functional connectivity network behavior and behavioral relevance

- Connections across source
- Connections across time

<!-- s -->

### Online Processing

<!-- s -->

#### 1. Storage CRISIS: Data Volume

- Traditional in science labs to store raw data
  - 1 gb/s
- current capitalization 2 MB/s (16 mb/s)
- Storage capacity is fixed
  - cumulative

<!-- s -->

#### 2. Information Loss: Opportunites to use expanded perspectives rather than reduced form

- Contrast
  - Linear Scaling
  - Lookup Tables
- Spatial and Temporal Filtering
- "Feature" images
  - Gradients
  - Surface Curvature

<!-- s -->

#### 3. Trend Sensor Performance and Ubiquity are **Exploding**

Two core innovations in available technology

- Molecular Engineering
  - (i.e. GCaMP)
- Cameras
  - scientific CMOS
  - inexpensive "machine vision" cameras
- (so is software)

<!-- s -->

#### Feature Extraction is fast

- "Feature" images (temporally independent)
  - Gradients
  - Surface Curvature
- Long Term Memory -> Storage structure
  - Statistics changes (single pixel)
  - Mutual information changes (inter-pixel)
- Continuity

<!-- s -->

#### Graphs identifying network connectivity can be built/updated online

- Think
  - Facebook
  - Google
  - Netflix

<!-- s -->

#### Computing Power and Open Software

- Computing Power and Connectivity
  - Remote Clusters (AWS)
  - Graphics Processing Units (NVIDIA GTX)
  - Embedded Units (NVIDIA Tegra X2)
- Well developed libraries
  - SciFio, OpenImageIO, BioFormats
  - OpenCV, OpenVX
  - GStreamer (much better)
  - Shader Language extensions (GLSL, HLSL, Halide)
  - CUDA
- Scalable Computing frameworks

<!-- s -->

#### DataFlow processing model

- Tensorflow

<!-- s -->

#### Standard graphics solutions

- FFmpeg
- GStreamer

<!-- s -->

#### Compression is everything

- Consciousness

<!-- s -->

#### Map-Reduce -> Dataflow Processing

- Actors model
- Petri Nets
- **Graph** Processing
- i.e. Tensorflow

<!-- s -->

#### (for my parents who may wish to know what MATLAB looks like)

##### Incremental Update of Statistics

```matlab
  function [m1,m2,m3,m4,fmin,fmax] = updateStatistics(x,m1,m2,m3,m4))
  n = n + 1;

  % GET PIXEL SAMPLE
  f = F(rowIdx,colIdx,k);

  % PRECOMPUTE & CACHE SOME VALUES FOR SPEED
  d = single(f) - m1;
  dk = d/n;
  dk2 = dk^2;
  s = d*dk*(n-1);

  % UPDATE CENTRAL MOMENTS
  m1 = m1 + dk;
  m4 = m4 + s*dk2*(n.^2-3*n+3) + 6*dk2*m2 - 4*dk*m3;
  m3 = m3 + s*dk*(n-2) - 3*dk*m2;
  m2 = m2 + s;

  % UPDATE MIN & MAX
  fmin = min(fmin, f);
  fmax = max(fmax, f);
end
```

<!-- s -->

#### Incremental Update of Statistics

![pixel statistics](img/sw-sequence-bw.png)

<!-- s -->

##### First 4 Central Moments

- over time
- incremental update
  - normalized and eventually resampled

![central moments](img/sw-video-statistics/statistics_of_128_frames_contrast_enhanced.jpg)

--

##### Extract Feature

```matlab
  function [dm1,dm2,dm3,dm4] = getStatisticUpdate(x,m1,m2,m3,m4)
  % COMPUTE DIFFERENTIAL UPDATE TO CENTRAL MOMENTS
  dm1 = dk;
  m1 = m1 + dm1;
  dm4 = s*dk2*(n^2-3*n+3) + 6*dk2*m2 - 4*dk*m3;
  dm3 = s*dk*(n-2) - 3*dk*m2;
  dm2 = s;
  m2 = m2 + dm2;
  % NORMALIZE BY VARIANCE & SAMPLE NUMBER -> CONVERSION TO dVar, dSkew, dKurt
  dm2 = dm2/max(1,n-1);
  dm3 = dm3*sqrt(max(1,n))/(m2^*5);
  dm4 = dm4*n/(m2^2);
end
```

```matlab
  [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(x,m1,m2,m3,m4)

  [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(rowidx,colidx)
```

<!-- s -->


#### Acknowledgements

The support and patience I have received from my committee has gone far beyond what should be expected of anyone. I can't thank you enough.

- Xue Han, Ph.D.
- Jerome Mertz, Ph.D.
- Ian Davis, Ph.D.
- Tom Bifano, Ph.D.
- David Boas, Ph.D.


<!-- s -->

## Generated


<!-- v -->

[1](img/1.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![2](img/2.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![3](img/3.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![SW-sequence-2015-07-seq02](img/SW-sequence-2015-07-seq02.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![01raw](img/animal-tracking/01raw.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![02black-and-white](img/animal-tracking/02black-and-white.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![03twoframes](img/animal-tracking/03twoframes.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![05tail_ID](img/animal-tracking/05tail_ID.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![06mousedata1](img/animal-tracking/06mousedata1.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![07mousedata1close](img/animal-tracking/07mousedata1close.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![08mousedata2](img/animal-tracking/08mousedata2.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![09mousedata1fiberon1](img/animal-tracking/09mousedata1fiberon1.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![bilateral-bw](img/cranial-window/bilateral-bw.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![early-vs-late-periodic-imaging-sessions](img/cranial-window/early-vs-late-periodic-imaging-sessions.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![half-year-bw](img/cranial-window/half-year-bw.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![prototype-model](img/cranial-window/prototype-model.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![siliskull-over-time](img/cranial-window/siliskull-over-time.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![HeadplateHolder2_V2](img/headplate-holder/HeadplateHolder2_V2.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![HeadplateHolder_V2](img/headplate-holder/HeadplateHolder_V2.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![_photo](img/headplate-holder/_photo.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![drawing-v2](img/headplate-holder/drawing-v2.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![photo-bottom](img/headplate-holder/photo-bottom.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![photo-front](img/headplate-holder/photo-front.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![photo-top](img/headplate-holder/photo-top.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![filter-slide-thor-CFH2-F](img/microscope/filter-slide-thor-CFH2-F.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![nikon-50mm-f1_2-lens](img/microscope/nikon-50mm-f1_2-lens.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![setup1](img/microscope/setup1.jpg)<!-- {_class="reveal stretch"} -->

![setup2](img/microscope/setup2.jpg)<!-- {_class="reveal stretch"} -->

![setup3-closeup](img/microscope/setup3-closeup.jpg)<!-- {_class="reveal stretch"} -->

![setup3-front](img/microscope/setup3-front.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![setup3-side](img/microscope/setup3-side.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![setup4-closeup](img/microscope/setup4-closeup.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![setup4-front](img/microscope/setup4-front.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![setup4-side](img/microscope/setup4-side.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![widefield_microscope_diagram](img/microscope/widefield_microscope_diagram.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![brain-cranial-window](img/monkey-related/brain-cranial-window.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![withLight](img/monkey-related/withLight.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![withoutLight](img/monkey-related/withoutLight.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![top-thorough](img/neuromodulation-implant/top-thorough.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![01pcb_bottom](img/neuromodulation-pcb/01pcb_bottom.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![02pcb_top](img/neuromodulation-pcb/02pcb_top.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![03pcb_combined](img/neuromodulation-pcb/03pcb_combined.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![04pcb_bottom-photo](img/neuromodulation-pcb/04pcb_bottom-photo.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![05pcb-top-photo](img/neuromodulation-pcb/05pcb-top-photo.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (1)](img/spectra/spectrumChart (1).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (10)](img/spectra/spectrumChart (10).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (11)](img/spectra/spectrumChart (11).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (12)](img/spectra/spectrumChart (12).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (13)](img/spectra/spectrumChart (13).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (14)](img/spectra/spectrumChart (14).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (15)](img/spectra/spectrumChart (15).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (16)](img/spectra/spectrumChart (16).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (2)](img/spectra/spectrumChart (2).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (3)](img/spectra/spectrumChart (3).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (4)](img/spectra/spectrumChart (4).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (5)](img/spectra/spectrumChart (5).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (6)](img/spectra/spectrumChart (6).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (7)](img/spectra/spectrumChart (7).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (8)](img/spectra/spectrumChart (8).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart (9)](img/spectra/spectrumChart (9).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spectrumChart](img/spectra/spectrumChart.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![01-treadmill-mouse-running](img/spherical-treadmill-VR/01-treadmill-mouse-running.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![02-treadmill-front](img/spherical-treadmill-VR/02-treadmill-front.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![03-treadmill-top](img/spherical-treadmill-VR/03-treadmill-top.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![lightson_withsusie](img/spherical-treadmill-extended/lightson_withsusie.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![01-motion-sensors-installed](img/spherical-treadmill-motion-sensors/01-motion-sensors-installed.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![02-motion-sensors](img/spherical-treadmill-motion-sensors/02-motion-sensors.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![02-teensy](img/spherical-treadmill-motion-sensors/02-teensy.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![DSC00436](img/spherical-treadmill-motion-sensors/DSC00436.JPG)<!-- {_class="reveal stretch"} -->

<!-- v -->

![DSC00437](img/spherical-treadmill-motion-sensors/DSC00437.JPG)<!-- {_class="reveal stretch"} -->

<!-- v -->

![DSC00438](img/spherical-treadmill-motion-sensors/DSC00438.JPG)<!-- {_class="reveal stretch"} -->

<!-- v -->

![DSC00439](img/spherical-treadmill-motion-sensors/DSC00439.JPG)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Striatum_Figure2](img/spherical-treadmill-motion-sensors/Striatum_Figure2.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![01-water-port](img/spherical-treadmill-water-delivery/01-water-port.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![02-water-delivery](img/spherical-treadmill-water-delivery/02-water-delivery.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![03-water-delivery-zoom](img/spherical-treadmill-water-delivery/03-water-delivery-zoom.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![RoiGenerator_snip1](img/sw-fluopro/RoiGenerator_snip1.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![RoiGenerator_snip2](img/sw-fluopro/RoiGenerator_snip2.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![RoiGenerator_snip3](img/sw-fluopro/RoiGenerator_snip3.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![RoiGenerator_snip4](img/sw-fluopro/RoiGenerator_snip4.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![cap1](img/sw-fluopro/cap1.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![cap2](img/sw-fluopro/cap2.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![cap3](img/sw-fluopro/cap3.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![homomorphic_filter_before-after_sidebyside](img/sw-fluopro/homomorphic_filter_before-after_sidebyside.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![motion_correction_sample](img/sw-fluopro/motion_correction_sample.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spatial-gradient-overlay](img/sw-fluopro/spatial-gradient-overlay.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180049](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180049.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180054](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180054.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180058](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180058.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180102](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180102.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180105](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180105.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180112](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180112.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180115](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180115.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180120](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180120.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180128](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180128.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20150608180137](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180137.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![HipassGreen](img/sw-homomorphic-filter/HipassGreen.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![HipassLopassFusion](img/sw-homomorphic-filter/HipassLopassFusion.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![LopassBlue](img/sw-homomorphic-filter/LopassBlue.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![highpass](img/sw-homomorphic-filter/highpass.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![highpass_scaled](img/sw-homomorphic-filter/highpass_scaled.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![input](img/sw-homomorphic-filter/input.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![input_scaled](img/sw-homomorphic-filter/input_scaled.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![loginput](img/sw-homomorphic-filter/loginput.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![loginput_scaled](img/sw-homomorphic-filter/loginput_scaled.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![logoutput](img/sw-homomorphic-filter/logoutput.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![logoutput_scaled](img/sw-homomorphic-filter/logoutput_scaled.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![lowpass](img/sw-homomorphic-filter/lowpass.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![lowpass_scaled](img/sw-homomorphic-filter/lowpass_scaled.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![output](img/sw-homomorphic-filter/output.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![output_scaled](img/sw-homomorphic-filter/output_scaled.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![scaledinput](img/sw-homomorphic-filter/scaledinput.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![scaledinput_scaled](img/sw-homomorphic-filter/scaledinput_scaled.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![pstep_illumcorrect](img/sw-pipeline-image-preprocessing/pstep_illumcorrect.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![pstep_normalizedbasesub](img/sw-pipeline-image-preprocessing/pstep_normalizedbasesub.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![pstep_raw](img/sw-pipeline-image-preprocessing/pstep_raw.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![pstep_segmentedALLroi](img/sw-pipeline-image-preprocessing/pstep_segmentedALLroi.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![pstep_spatialfilter](img/sw-pipeline-image-preprocessing/pstep_spatialfilter.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20170815001718](img/sw-roi-gui-traces/Screenshot_20170815001718.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20170816233739](img/sw-roi-gui-traces/Screenshot_20170816233739.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_20170816234331](img/sw-roi-gui-traces/Screenshot_20170816234331.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![sw-sequence-bw](img/sw-sequence-bw.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![distance-from-bounding-box-corners](img/sw-video-processing-feature-generation-A/distance-from-bounding-box-corners.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![max-area-log1pabs](img/sw-video-processing-feature-generation-A/max-area-log1pabs.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![max-area-sqrttabs](img/sw-video-processing-feature-generation-A/max-area-sqrttabs.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![max-relative-centroid-distance](img/sw-video-processing-feature-generation-A/max-relative-centroid-distance.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![max-relative-centroid](img/sw-video-processing-feature-generation-A/max-relative-centroid.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![mean-area](img/sw-video-processing-feature-generation-A/mean-area.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![mean-centroid-distance-meanBoundaryDistance-meanArea](img/sw-video-processing-feature-generation-A/mean-centroid-distance-meanBoundaryDistance-meanArea.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![mean-centroid-distance-real-and-imaginary](img/sw-video-processing-feature-generation-A/mean-centroid-distance-real-and-imaginary.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![min-area-log1pads-inf-removed](img/sw-video-processing-feature-generation-A/min-area-log1pads-inf-removed.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![min-area](img/sw-video-processing-feature-generation-A/min-area.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![min-extent-both-distance-corners](img/sw-video-processing-feature-generation-A/min-extent-both-distance-corners.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![min-extent-distance-lowerRight](img/sw-video-processing-feature-generation-A/min-extent-distance-lowerRight.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![min-extent-distance-upperLeft](img/sw-video-processing-feature-generation-A/min-extent-distance-upperLeft.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 15-25-55](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-25-55.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 15-26-08](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-08.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 15-26-21](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-21.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 15-26-30](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-30.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 15-26-36](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-36.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 15-26-46](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-46.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 17-47-37](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-47-37.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 17-47-48](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-47-48.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 17-48-26](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-48-26.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 17-48-34](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-48-34.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-04 17-48-51](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-48-51.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-06 03-53-15](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-06 03-53-15.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-06 03-54-12](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-06 03-54-12.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-06 04-07-50](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-06 04-07-50.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-06 04-20-02](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-06 04-20-02.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot from 2018-08-06 04-32-01](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-06 04-32-01.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![sw-video-processing-feature-generation](img/sw-video-processing-feature-generation.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![After_Layer_EDGE_Refinement_2015Sep02_201AM](img/sw-video-processing-feature-layers-peak-edge-refinement/After_Layer_EDGE_Refinement_2015Sep02_201AM.jpg)<!-- {_class="reveal stretch"} -->


<!-- ![After_Layer_PEAK_Refinement_(squaring)_2015Sep02_210AM](img/sw-video-processing-feature-layers-peak-edge-refinement/After_Layer_PEAK_Refinement_(squaring)_2015Sep02_210AM.jpg)<2!-- {_class="reveal stretch"} --2> -->


<!-- ![After_Layer_PEAK_Refinement_(using_sign)_2015Sep02_209AM](img/sw-video-processing-feature-layers-peak-edge-refinement/After_Layer_PEAK_Refinement_(using_sign)_2015Sep02_209AM.jpg)<2!-- {_class="reveal stretch"} --2> --1> -->


<!-- ![After_Layer_PEAK_Refinement_2015Sep02_201AM](img/sw-video-processing-feature-layers-peak-edge-refinement/After_Layer_PEAK_Refinement_2015Sep02_201AM.jpg)<2!-- {_class="reveal stretch"} --2> --1> -->


<!-- v -->

![Before_Layer_Refinement_2015Sep02_201AM](img/sw-video-processing-feature-layers-peak-edge-refinement/Before_Layer_Refinement_2015Sep02_201AM.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![sw-video-processing-feature-pointwise-mutual-information](img/sw-video-processing-feature-pointwise-mutual-information.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_from_2018-08-04_15-25-55](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_15-25-55.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_from_2018-08-04_15-26-30](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_15-26-30.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_from_2018-08-04_17-10-24](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_17-10-24.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_from_2018-08-04_17-48-26](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_17-48-26.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_from_2018-08-06_04-07-50](img/sw-video-processing-segmentation/Screenshot_from_2018-08-06_04-07-50.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Screenshot_from_2018-08-06_04-32-01](img/sw-video-processing-segmentation/Screenshot_from_2018-08-06_04-32-01.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![sw-video-processing-spatial-peak-activity-metric](img/sw-video-processing-spatial-peak-activity-metric.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spatially-adaptive-vs-temporally-adaptive-filter-frame1208](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1208.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spatially-adaptive-vs-temporally-adaptive-filter-frame1213](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1213.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![spatially-adaptive-vs-temporally-adaptive-filter-frame1218](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1218.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![sw-video-processing-spatially-vs-temporally-adaptive-filter](img/sw-video-processing-spatially-vs-temporally-adaptive-filter.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

<!-- ![Absolute_Minimum_Pixel_Value_(RED)_vs](img/sw-video-statistics/Absolute_Minimum_Pixel_Value_(RED)_vs._Minimum_Estimate_(BLUE).jpg)<1!-- {_class="reveal stretch"} --1> -->

<!-- v -->

![Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION)](img/sw-video-statistics/Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION).png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames)](img/sw-video-statistics/Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames).jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![F_segmented_using_2-pUnstable](img/sw-video-statistics/F_segmented_using_2-pUnstable.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Hybrid-Median-Filter_vs](img/sw-video-statistics/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1252AM.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Hybrid-Median-Filter_vs](img/sw-video-statistics/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1256AM.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![Motion-induced_BLURRING_of_ROI_with_max-min-mean](img/sw-video-statistics/Motion-induced_BLURRING_of_ROI_with_max-min-mean.png)<!-- {_class="reveal stretch"} -->

<!-- v -->

![differential_kurtosis1](img/sw-video-statistics/differential_kurtosis1.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![differential_kurtosis2](img/sw-video-statistics/differential_kurtosis2.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![differential_kurtosis3](img/sw-video-statistics/differential_kurtosis3.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![differential_skewness](img/sw-video-statistics/differential_skewness.2jpg.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![differential_skewness](img/sw-video-statistics/differential_skewness.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM](img/sw-video-statistics/log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![pUnstable_(mean_gradients_of_fSplit)](img/sw-video-statistics/pUnstable_(mean_gradients_of_fSplit).jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![stat-M3_after_2nd_Chunk_2015Aug12_140AM](img/sw-video-statistics/stat-M3_after_2nd_Chunk_2015Aug12_140AM.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->

![statistics_of_128_frames_contrast_enhanced](img/sw-video-statistics/statistics_of_128_frames_contrast_enhanced.jpg)<!-- {_class="reveal stretch"} -->

<!-- v -->


<!-- .slide: data-background="./img/1.png" -->



