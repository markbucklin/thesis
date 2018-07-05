## Animal Tracking

<!-- #### Free Behavior with Video Tracking -->
<!-- ![](media/image8.jpeg){width="1.5in" height="1.2711318897637796in"} -->

<!-- ![](media/image9.tiff){width="2.0in" height="1.7125in"}![](media/image10.tiff){width="1.4986111111111111in"
height="1.5541666666666667in"} -->
A webcam-based motion tracking box has been constructed to analyze the movement of our
unilaterally lesioned PD mouse model. Video is recorded at 15 frames per second and processed on-line or off-line using
a function written in MATLAB. Briefly, this function converts each frame to a black and white image (logical matrix),
uses morphological filtering functions to isolate the mouse (remove mouse excrement) and identify its body (remove the
tail), then finds the center of mass in cartesian coordinates (maximum center of projection on x- and y-axes), and the
rostral-caudal orientation measured in degrees off the x-axis. Orientation is determined by the index of maximum of a
radon transform of the binary image. Processing is accomplished at a rate of 15-16 fps, using a single core, or 64 fps
using parallel processing on a quad-core processor with multi-threading enabled. The advantage of this apparatus over
the virtual-reality system is that it allows free movement of an untrained mouse, with real-time movement metrics at
nearly the same rate as the spherical treadmil


### Motion Sensors


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

>   datastring = s + 'x'+dx + 'y'+dy + '\n'

For example:

>   s1x34y-3

#### Navigation Sensor Chip with Arduino
Works with ADNS library (Mark Bucklin) to pass [dx,dy] measurements from two
ADNS-9800 laser mouse sensors (placed 45-degrees apart on surface of styrofoam ball).

