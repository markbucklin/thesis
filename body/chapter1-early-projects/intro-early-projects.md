# Early Projects

<!-- Thermal Modeling of laser light delivery to brain through fixed fiber optic -->

<!-- carbon fiber electrode & LED -->


## Photo Absorption and Thermal Dissipation in Brain Tissue Optogenetics
This was a modeling project.


## Deep-Target Carbon-Fiber Electrode Array and Bilateral Illumination Implication



## Behavior Box
<!--  2011 -->
Files in this folder are used to run our "BehaviorBox" system, which features easily customizable control of experiments involving an infrared touchscreen and LCD display along with speakers, water-ports, lights, essentially anything that can be controlled electronically... 

COGENT 2000
The graphics/visual-stimulation package used is missing from this folder due to size, but can be downloaded from the source (http://www.vislab.ucl.ac.uk/cogent_2000.php)


<!-- TouchDisplay, TouchInterface, Speaker, NiDaqInterface, DataFile, BehaviorFile, DataLogger, BehaviorBox, BehaviorBoxController, PositionData, Rectangle  -->
% This class represents the touchscreen monitor used to present stimuli
    % to mice in the behavior box. It uses Cogent, a MATLAB graphics
    % toolbox available at http://www.vislab.ucl.ac.uk/cogent.php

<!-- touch screen, FrameSynx + DataFile, Hardware Control -->
### IR Touchscreen

IRTouch Serial Protocol 1105


### FrameSynx Toolbox
The FrameSynx toolbox for MATLAB was built to synchronize continuous image acquisition with experiments conducted in the
neuroscience laboratory setting. While the experiments are conducted in separate software (and potentially on a
different computer), FrameSynx listens for messages to start/stop the experiment, start a trial, etc. and responds
accordingly by controlling one or multiple cameras and illumination devices, and synchronizing this information with the
data acquired.


## CNC Mini-Mill


## Spherical Treadmill


### Motion Sensing

#### Generic USB Computer Mouse with Minimal Linux
Run "mouse_relay.py" on any computer running linux to send xy-data from 2 USB optical computer mice to another computer
over an RS-232 serial-port connection. The receiving computer (in this implementation) uses MATLAB to read the values
and translate the xy-values from 2 mice on the surface of a sphere into 3 values corresponding to rotation of that
sphere around 3 orthogonal axes (XYZ) with their origin at the sphere's center. 


RECEIVING FUNCTIONS: The MATLAB class that receives the serial input (xy-values from both mice) is called
"VrMovementInterface"

The MATLAB function that translates the double-stream of xy-values from the sphere's surface into rotation around its
center is called "moveBucklin.m" and is located in the VIRMEN "movements" folder.


SERIAL FORMAT: XY-Values are transmitted in 'packets' using an ascii formatted string terminated by a newline. Each
packet contains the Sensor Number (s) that the reading is coming from, followed by the X-Value (dx), then the Y-Value
(dy). The python code looks like the following: 

datastring = s + 'x'+dx + 'y'+dy + '\n'

For example:

s1x34y-3

#### Navigation Sensor Chip with Arduino
Works with ADNS library (Mark Bucklin) to pass [dx,dy] measurements from two
ADNS-9800 laser mouse sensors (placed 45-degrees apart on surface of styrofoam ball).





## Automated Behavior Tracking: Mouse-Bowl Spin-Counter


