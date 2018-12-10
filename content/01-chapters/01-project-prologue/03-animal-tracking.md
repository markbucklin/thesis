## Animal Tracking

A webcam-based motion tracking box constructed to analyze the movement of our unilaterally lesioned PD mouse model. Video is recorded at 15 frames per second and processed on-line or off-line using a function written in MATLAB. Briefly, this function converts each frame to a black and white image (logical matrix), uses morphological filtering functions to isolate the mouse (remove mouse excrement) and identify its body (remove the tail), then finds the center of mass in cartesian coordinates (maximum center of projection on x- and y-axes), and the rostral-caudal orientation measured in degrees off the x-axis. Orientation is determined by the index of maximum of a radon transform of the binary image. Processing is accomplished at a rate of 15-16 fps, using a single core, or 64 fps using parallel processing on a quad-core processor with multi-threading enabled. The advantage of this apparatus over the virtual-reality system is that it allows free movement of an untrained mouse, with real-time movement metrics at nearly the same rate as the spherical treadmill.


![framesample](/images/framesample.jpg){#fig:animal-tracking-framesample height="2in"}
![tail ID](/images/tail%20ID.jpg){#fig:animal-tracking-tail height="2in"}
![twoframes](/images/twoframes.jpg){#fig:animal-tracking-twoframes height="2in"}
![untitled](/images/untitled.jpg){#fig:animal-tracking-untitled height="2in"}
![Capture](/images/Capture.PNG){#fig:animal-tracking-Capture height="2in"}
