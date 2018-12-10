## Animal Tracking

A webcam-based motion tracking box constructed to analyze the movement of our unilaterally lesioned PD mouse model. Video is recorded at 15 frames per second and processed on-line or off-line using a function written in MATLAB. Briefly, this function converts each frame to a black and white image (logical matrix), uses morphological filtering functions to isolate the mouse (remove mouse excrement) and identify its body (remove the tail), then finds the center of mass in cartesian coordinates (maximum center of projection on x- and y-axes), and the rostral-caudal orientation measured in degrees off the x-axis. Orientation is determined by the index of maximum of a radon transform of the binary image. Processing is accomplished at a rate of 15-16 fps, using a single core, or 64 fps using parallel processing on a quad-core processor with multi-threading enabled. The advantage of this apparatus over the virtual-reality system is that it allows free movement of an untrained mouse, with real-time movement metrics at nearly the same rate as the spherical treadmill.

#### Figure: text is ignored {#animal-tracking-bowl}

![picture of bowl Capture ](img/bowl/Capture.png){#bowl-Capture width=30%}

![picture of bowl tail_ID ](img/bowl/tail_ID.jpg){#bowl-tail_ID width=30%}
![picture of bowl twoframes ](img/bowl/twoframes.jpg){#bowl-twoframes width=30%}
![picture of bowl untitled ](img/bowl/untitled.jpg){#bowl-untitled width=30%}\

![picture of bowl framesample ](img/bowl/framesample.jpg){#bowl-framesample width=30%}
![picture of bowl mousedata1 ](img/bowl/mousedata1.jpg){#bowl-mousedata1 width=30%}
![picture of bowl mousedata1close ](img/bowl/mousedata1close.jpg){#bowl-mousedata1close width=30%}
![picture of bowl mousedata1fiberon1 ](img/bowl/mousedata1fiberon1.jpg){#bowl-mousedata1fiberon1 width=30%}
![picture of bowl mousedata2 ](img/bowl/mousedata2.jpg){#bowl-mousedata2 width=30%}
![picture of bowl mousedata3 ](img/bowl/mousedata3.jpg){#bowl-mousedata3 width=30%}
![picture of bowl mousedata4 ](img/bowl/mousedata4.jpg){#bowl-mousedata4 width=30%}
![picture of bowl mousedata7highres ](img/bowl/mousedata7highres.jpg){#bowl-mousedata7highres width=30%}

Caption: Processing steps for automated rotation counting procedure used in hemiparkinsonian mouse study



<!--
![framesample](/images/framesample.jpg){#fig:animal-tracking-framesample height="2in"}
![tail ID](/images/tail%20ID.jpg){#fig:animal-tracking-tail height="2in"}
![twoframes](/images/twoframes.jpg){#fig:animal-tracking-twoframes height="2in"}
![untitled](/images/untitled.jpg){#fig:animal-tracking-untitled height="2in"}
![Capture](/images/Capture.PNG){#fig:animal-tracking-Capture height="2in"} -->
