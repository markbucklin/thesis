# Neural Interfaces: Fabrication, programming, and assembly

This chapter describes several projects that were started early during my graduate studies.
Each project is similar in that they are outside the realm of optical imaging of neural activity, which is the focus of the rest of this dissertation.
Nevertheless, they are included here because the issues they bring up will later inform the approach I take in the work described in later chapters.
The projects described in the following sections are also tied together by a common goal: to enable research in the neurosciences with translation potential for clinical applications.

## Animal Tracking

### Behavior Box

I built an experiment apparatus for mice to enable a study being run by Jia-Min Zhuo.
The goal of the study wasto elucidate the role of adult-born neurons on mouse behavior, specifically their performance in discrimination tasks.
We called the apparatus the "Behavior Box" and modeled it after a commercially available but grossly over-priced box that itself came from other labs [@clelland2009, @creer2010].

The chamber was constructed with black plastic walls, extruded aluminum framing, and a perforated metal mesh floor 1 cm above a plastic waste tray.
A 10-inch infrared touchscreen (ITouch Systems) was mounted over a 10-inch LCD monitor forming one wall of the chamber.
An opaque mask with seven windows was placed over the screeen to limit where the mouse could touch.
A water pump with infrared detector was located at teh other end of the chamber to provide reward for the water-deprived mice in the study.
A white LED strip encircled the chamber from the top, and multiple speakers positioned outside to deliver sound cues.
A web camera was fixed above the chamber to record and monitor mouse activity.
My contribution to this project was the program for interact with all the system components.
This program controlled and recorded experiment progress.
I developed the program in MATLAB, and the main components of its function are described below.


![behaviorbox schematic](img/behavior-box/task-schematic.jpg){ width=50% }

#### IR Touchscreen {#sec:ir-touchscreen}

The IR touchscreen provided a robust measure of the location of any contact with the animal's paws or nose.
The screen was more reliable than either _resistive_ or _capacitive_ touchscreens, which are much more common in devices like POS systems and mobile phones respectively.

Files in this folder are used to run our "BehaviorBox" system, which features easily customizable control of experiments involving an infrared touchscreen and LCD display along with speakers, water-ports, lights, essentially anything that can be controlled electronically.

COGENT 2000 The graphics/visual-stimulation package used is missing from this folder due to size, but can be downloaded from the [source](http://www.vislab.ucl.ac.uk/cogent_2000.php)

#### FrameSynx Toolbox {#sec:framesynx-toolbox}

The FrameSynx toolbox for MATLAB was built to synchronize continuous image acquisition with experiments conducted in the neuroscience laboratory setting.
While the experiments are conducted in separate software (and potentially on a different computer), FrameSynx listens for messages to start/stop the experiment, start a trial, etc.
and responds accordingly by controlling one or multiple cameras and illumination devices, and synchronizing this information with the data acquired.
The major contribution to the "Behavior Box" package, and also to later image processing packages is the procedure for definition and storage and of experimental data files, which will be touched on briefly in [@sec:data-file]

### Using Computer Vision to track Position and Orientation {#sec:using-computer-vision-to-track-position-and-orientation}

#### Mouse in a Bowl

A webcam-based motion tracking box constructed to analyze the movement of our unilaterally lesioned PD mouse model.
Video is recorded at 15 frames per second and processed on-line or off-line using a function written in MATLAB.
Briefly, this function converts each frame to a black and white image (logical matrix), uses morphological filtering functions to isolate the mouse (remove mouse excrement) and identify its body (remove the tail), then finds the center of mass in cartesian coordinates (maximum center of projection on x- and y-axes), and the rostral-caudal orientation measured in degrees off the x-axis.
Orientation is determined by the index of maximum of a radon transform of the binary image.
Processing is accomplished at a rate of 15-16 fps, using a single core, or 64 fps using parallel processing on a quad-core processor with multi-threading enabled.
The advantage of this apparatus over the virtual-reality system is that it allows free movement of an untrained mouse, with real-time movement metrics at nearly the same rate as the spherical treadmill.

<div id="fig:mouse-in-a-bowl">

![Raw frame of video being tacked](img/animal-tracking/01raw.jpg){ width=30% }
![Area of detected mouse](img/animal-tracking/02black-and-white.jpg){ width=30%}
![Overlay of 3 consecutive frames showing movement of mouse between each](img/animal-tracking/03twoframes.jpg){ width=30%}

![video overlay showing tracked points](img/animal-tracking/07mousedata1close.jpg){ width=20% }
![video overlay showing tracked points](img/animal-tracking/06mousedata1.jpg){ width=20% }
![video overlay showing tracked points](img/animal-tracking/08mousedata2.jpg){ width=20% }
![video overlay showing tracked points](img/animal-tracking/09mousedata1fiberon1.jpg){ width=20% }

Automated animal Tracking for "Mouse in a bowl" type experiments
</div>



### Spherical Treadmill

A virtual reality system was assembled, adopting methods from the Harvey lab lab [@harvey_intracellular_2009].
This system allows placement of a head-restrained mouse on an 8-inch diameter polystyrene foam ball supported by a cushion of compressed air, surrounded by a toroidal projection screen.
Ball rotation is tracked with two optical computer mice placed orthogonal to each other.
Movement vectors are fed into a virtual-reality engine that updates the image projected onto a toroidal screen surrounding the ball, simulating movement through any arbitrary virtual world.
Movement vectors are recorded as an arbitrarily scaled translation in the mouse-relative X and Y axes and rotation around the Z axis, at approximately 30 ms intervals.
This behavioral apparatus has the advantage of allowing trivial measurement of the mouse’s movement ability while the mouse is head-fixed.
The disadvantage is the time and potential confounds involved with training individual mice to use the system.

<div id="fig:spherical-tradmill">

![01-treadmill-mouse-running](img/spherical-treadmill-VR/01-treadmill-mouse-running.jpg){ width=30% }
![01-water-port](img/spherical-treadmill-water-delivery/01-water-port.jpg){ width=30% }
![03-water-delivery-zoom](img/spherical-treadmill-water-delivery/03-water-delivery-zoom.jpg){ width=30% }

Spherical treadmill
</div>

### Headplate Holder

<div id="fig:headplate-holder">

![front](img/headplate-holder/photo-front.jpg){ width=30%}
![top](img/headplate-holder/photo-top.jpg){ width=30%}
![bottom](img/headplate-holder/photo-bottom.jpg){ width=30%}

Headplate holder
</div>

### Motion Sensors
Motion sensing was implemented using a linux computer and standard mice at first, and later using precision laser navigation sensors for "gaming" mice and custom firmware written to work with any arduino-compatible microcontroller.

<!-- todo -->

#### Generic USB Computer Mouse with Minimal Linux

Run "mouse_relay.py" on any computer running linux to send xy-data from 2 USB optical computer mice to another computer over an RS-232 serial-port connection.
The receiving computer (in this implementation) uses MATLAB to read the values and translate the xy-values from 2 mice on the surface of a sphere into 3 values corresponding to rotation of that sphere around 3 orthogonal axes (XYZ) with their origin at the sphere's center.

RECEIVING FUNCTIONS: The MATLAB class that receives the serial input (xy-values from both mice) is called "VrMovementInterface"

The MATLAB function that translates the double-stream of xy-values from the sphere's surface into rotation around its center is called "moveBucklin.m" and is located in the VIRMEN "movements" folder.

SERIAL FORMAT: XY-Values are transmitted in 'packets' using an ascii formatted string terminated by a newline.
Each packet contains the Sensor Number (s) that the reading is coming from, followed by the X-Value (dx), then the Y-Value (dy).
The python code looks like the following:

```python
> datastring = s + 'x'+dx + 'y'+dy + '\n'
```

A single reading is received at the other end of the serial connection looking something like the following:

> s1x34y-3

#### Navigation Sensor Chip with Arduino

<!-- todo -->
The system was later improved.
Works with ADNS library to pass \[dx,dy\] measurements from two ADNS-9800 laser mouse sensors (placed 45-degrees apart on surface of styrofoam ball).


<div id="fig:motion-sensors">

![01-motion-sensors-installed](img/spherical-treadmill-motion-sensors/01-motion-sensors-installed.jpg){ width=30% }
![02-motion-sensors](img/spherical-treadmill-motion-sensors/02-motion-sensors.jpg){ width=30% }
![Striatum_Figure2](img/spherical-treadmill-motion-sensors/Striatum_Figure2.png){ width=30% }

Motion sensors
</div>


## Microscopes

This section describes the background in microscopy in the neurosciences, and also how it relates to imaging in healthcare and electrophysiology in neuroscience.
It will also describe the basic elements necessary for the construction of a microscope in a laboratory where calcium imaging in an animal is available.
It will also refer to later sections which cover the design and construction of mechanical elements for animal handling and optical access (i.e. the headplate and a chronic optical window).

#### Background: Brain Imaging and Microscopy in Neuroscience

Optical imaging has traditionally involved wide-field imaging or two photon imaging, each with their own distinctive advantages and disadvantages.
In recent years, two photon microscopy has been a preeminent choice for imaging in tissue, because of its high spatial resolution, and tissue penetrating features.
Two photon calcium imaging has been broadly applied to individual cells or subcellular components of neurons including spines and axons.

Because two photon microscopy uses a scanning mechanism, the signal to noise ratio is influenced by the time spent imaging each point, and the spatial resolution is determined by the number of points scanned to obtain each image.
As a result, the size of the imaging field is inversely correlated with the overall temporal resolution while maintaining a relatively high signal-to-noise ratio, thus, two photon calcium imaging is often performed on a small area or on a sparse network of cells, when dynamic responses with high temporal fidelity is necessary.

Wide-field imaging has been used in various forms for several decades and was first used to characterize the functional architecture and hemodynamic responses in brain tissue.
However, this technique has seen a renaissance recently due to its simple instrumentation, relatively inexpensive cost, and the improvements in neural signal indicators.
Optical imaging and two photon microscopy have traditionally been performed in head-fixed preparations, but recent advances have also made it possible to perform wide-field calcium imaging in freely moving animals, through miniaturized and wearable microendoscope systems

While wide-field imaging lacks the spatial resolution to resolve fine subcellular structure or the penetrating properties available with two-photon, it is possible to obtain clear neurites and somatic features, including spike detection

Because a single photon microscope does not rely on scanning features, it can be used to sample a larger field of view without sacrificing sampling rates.
Additionally, recording sessions may be less sensitive to fluorophore bleaching than other techniques, which makes it possible to perform sustained illumination and subsequent imaging for an extended period of time - a desired feature for analyzing neural networks during some behavior paradigms (e.g., repeated trial learning paradigms).
Thus, wide-field imaging offers an advantage if the objective is to simultaneously recording hundreds of neurons in the brain of a living and behaving animal with high temporal fidelity.

### Microscope Construction
<div id="fig:widefield-microscope">

![schematic showing relation of microscope and mouse on spherical treadmill](img/microscope/widefield_microscope_diagram.png){ width=50% }

![setup1](img/microscope/setup1.jpg){ width=10% }
![setup2](img/microscope/setup2.jpg){ width=10% }

![setup3-front](img/microscope/setup3-front.jpg){ width=10% }
![setup3-closeup](img/microscope/setup3-closeup.jpg){ width=30% }
![setup3-side](img/microscope/setup3-side.jpg){ width=30% }

![setup4-front](img/microscope/setup4-front.jpg){ width=10% }
![setup4-closeup](img/microscope/setup4-closeup.jpg){ width=30% }
![setup4-side](img/microscope/setup4-side.jpg){ width=30% }

Widefield fluorescence microscope. Multiple iterations are shown, with later iterations offering improved compatibility with usage of off-the-shelf components.
</div>
