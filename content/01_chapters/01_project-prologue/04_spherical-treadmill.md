## Spherical Treadmill & Virtual-Reality

<!-- ## Spherical Treadmill -->

A virtual reality system was assembled, adopting methods from the Harvey lab lab [@harvey_intracellular_2009]. This system allows placement of a head-restrained mouse on an 8-inch diameter polystyrene foam ball supported by a cushion of compressed air, surrounded by a toroidal projection screen. Ball rotation is tracked with two optical computer mice placed orthogonal to each other. Movement vectors are fed into a virtual-reality engine that updates the image projected onto a toroidal screen surrounding the ball, simulating movement through any arbitrary virtual world. Movement vectors are recorded as an arbitrarily scaled translation in the mouse-relative X and Y axes and rotation around the Z axis, at approximately 30 ms intervals. This behavioral apparatus has the advantage of allowing trivial measurement of the mouse’s movement ability while the mouse is head-fixed. The disadvantage is the time and potential confounds involved with training individual mice to use the system.

### Treadmill contstruction

#### Figure: {#spherical-treadmill}
![spherical-treadmill-VR/01-treadmill-mouse-running ](../../../img/0spherical-treadmill-VR/01-treadmill-mouse-running.jpg){#spherical-treadmill-VR1-treadmill-mouse-running}
![spherical-treadmill-VR/02-treadmill-front ](../../../img/0spherical-treadmill-VR/02-treadmill-front.jpg){#spherical-treadmill-VR2-treadmill-front}
![spherical-treadmill-VR/03-treadmill-top ](../../../img/0spherical-treadmill-VR/03-treadmill-top.jpg){#spherical-treadmill-V03-treadmill-top}
Caption: this treadmill supports behavior.



### Water Delivery



#### Figure: {#water-delivery}
![spherical-treadmill-water-delivery/01-water-port ](../../../img/0spherical-treadmill-water-delivery/01-water-port.jpg){#spherical-treadmill-water-deliver01-water-port}
![spherical-treadmill-water-delivery/02-water-delivery ](../../../img/0spherical-treadmill-water-delivery/02-water-delivery.jpg){#spherical-treadmill-water-delivery2-water-delivery}
![spherical-treadmill-water-delivery/03-water-delivery-zoom ](../../../img/0spherical-treadmill-water-delivery/03-water-delivery-zoom.jpg){#spherical-treadmill-water-delivery3-water-delivery-zoom}
Caption: waterport





### Motion Sensors
Motion sensing was implemented using a linux computer and standard mice at first, and later using precision laser navigation sensors for "gaming" mice and custom firmware written to work with any arduino-compatible microcontroller.
<!-- todo -->

#### Generic USB Computer Mouse with Minimal Linux

Run "mouse_relay.py" on any computer running linux to send xy-data from 2 USB optical computer mice to another computer over an RS-232 serial-port connection. The receiving computer (in this implementation) uses MATLAB to read the values and translate the xy-values from 2 mice on the surface of a sphere into 3 values corresponding to rotation of that sphere around 3 orthogonal axes (XYZ) with their origin at the sphere's center.

RECEIVING FUNCTIONS: The MATLAB class that receives the serial input (xy-values from both mice) is called "VrMovementInterface"

The MATLAB function that translates the double-stream of xy-values from the sphere's surface into rotation around its center is called "moveBucklin.m" and is located in the VIRMEN "movements" folder.

SERIAL FORMAT: XY-Values are transmitted in 'packets' using an ascii formatted string terminated by a newline. Each packet contains the Sensor Number (s) that the reading is coming from, followed by the X-Value (dx), then the Y-Value (dy). The python code looks like the following:

```python
> datastring = s + 'x'+dx + 'y'+dy + '\n'
```

For example:

```csv
> s1x34y-3
```

#### Navigation Sensor Chip with Arduino

Works with ADNS library (Mark Bucklin) to pass \[dx,dy\] measurements from two ADNS-9800 laser mouse sensors (placed 45-degrees apart on surface of styrofoam ball).



#### Figure: {#motion-sensors}
![spherical-treadmill-motion-sensors/01-motion-sensors-installed ](../../../img/0spherical-treadmill-motion-sensors/01-motion-sensors-installed.jpg){#spherical-treadmill-motion-sensors-motion-sensors-installed}
![spherical-treadmill-motion-sensors/02-motion-sensors ](../../../img/0spherical-treadmill-motion-sensors/02-motion-sensors.jpg){#spherical-treadmill-motion-sensors-motion-sensors}
Caption: Motion Sensors for tracking ball movement. can be used to control and record speed and direction of mouse movement within the VR world.
