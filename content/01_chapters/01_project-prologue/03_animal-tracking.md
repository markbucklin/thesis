## Animal Tracking {#sec:animal-tracking}


### Using Computer Vision to track Position and Orientation {#sec:using-computer-vision-to-track-position-and-orientation}
A webcam-based motion tracking box constructed to analyze the movement of our unilaterally lesioned PD mouse model. Video is recorded at 15 frames per second and processed on-line or off-line using a function written in MATLAB. Briefly, this function converts each frame to a black and white image (logical matrix), uses morphological filtering functions to isolate the mouse (remove mouse excrement) and identify its body (remove the tail), then finds the center of mass in cartesian coordinates (maximum center of projection on x- and y-axes), and the rostral-caudal orientation measured in degrees off the x-axis. Orientation is determined by the index of maximum of a radon transform of the binary image. Processing is accomplished at a rate of 15-16 fps, using a single core, or 64 fps using parallel processing on a quad-core processor with multi-threading enabled. The advantage of this apparatus over the virtual-reality system is that it allows free movement of an untrained mouse, with real-time movement metrics at nearly the same rate as the spherical treadmill.


<!--  for pandoc-crossref syntax use the following
<div id="fig:animal-tracking-bowl">

</div>
 -->
<!--  Science.md
![caption](location/name.png){#fig:label}
 -->


<div id="fig:animal-tracking-bowl">
![raw](../../../img/animal-tracking/01raw.jpg){#fig:animal-tracking-bowl-raw}
![black-and-white](../../../img/animal-tracking/02black-and-white.jpg){#fig:animal-tracking-bowl-black-and-white}
![twoframes](../../../img/animal-tracking/03twoframes.jpg){#fig:animal-tracking-bowl-twoframes}
![tail_ID](../../../img/animal-tracking/05tail_ID.jpg){#fig:animal-tracking-bowl-tail_ID}
![mousedata1](../../../img/animal-tracking/06mousedata1.jpg){#fig:animal-tracking-bowl-mousedata1}
![mousedata1close](../../../img/animal-tracking/07mousedata1close.jpg){#fig:animal-tracking-bowl-mousedata1close}
![mousedata2](../../../img/animal-tracking/08mousedata2.jpg){#fig:animal-tracking-bowl-mousedata2}
![mousedata1fiberon1](../../../img/animal-tracking/09mousedata1fiberon1.jpg){#fig:animal-tracking-bowl-mousedata1fiberon1}
<!-- Caption: Processing steps for automated rotation counting procedure used in hemiparkinsonian mouse study -->
</div>
