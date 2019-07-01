# Discussion: the last mile in computing for clinicians, engineers, and research scientists

This dissertation has presented straightforward methods for assembling laboratory equipment that can capture the behavior and neural activity of laboratory animals, and procedures for managing and making use of the collected data.
In some ways the recommended procedures may deviate from standard practice or what may jump forth as the most obvious approach.
The __why__ is what I wish to address here.

## State of current methods

At the start of the work described here we found ourselves with technology providing "neural signals" that vastly exceeded our expectations and the assumptions of the tools we applied to work with it.
In the past, fluctations in optical imaging data were dominated by "noise."
The form of noise depended on the process; all types of imaging, intrinsic signal, fluorescent dye, etc., had relatively small fluctuations resulting from neural activity.
With new engineered molecules, like GCaMP6, and new images sensors, like those dubbed __scientific CMOS__, these sources of noise become relatively small.
The large change in signal-to-noise ratio opens the door for new opportunities and change to traditional routines.
The abundance of signals available from our research animals not only makes old routines __inefficient__, but paradoxically __insufficient__.
Such an abundance of factors at our finger tips requires a level of discipline in study design to make the scientific method work that was previously unneccessary, as the difficulty in finding signals was inherently self regulating.

### Signal and Noise in Neural Imaging Data

Traditional noise in neural signals can be roughly categorized as having origin in physiology or technology.
The physiological noise sources would include "artifacts" caused by an animal's breathing, the beats of their heart, or the movement they make as they react to the experimentally controlled world around them.
Technological noise is usually broken down into sensor noise sources, __read noise__ and __thermal noise__, and noise relating to digitization.
A third type of "noise" could arguably be categorized as either, as it lies at the interface of technology and biology, for example the complex interactions of exogenous calcium-binding proteins like GCaMP with the endogenous calcium handling proteins of a neuron.
By a strict definition, however, only the sensor noise should really be called __noise__, as other sources are not entirely unpredictable.
They can be accounted for.

At any rate, the level of noise in the signals gathered by a combination of GCaMP6 and a sCMOS camera is miniscule relative to the signals indicating fluctuation in calcium concentration.
The problem of visualization of these signals remains, however, as the dynamic range of signal varies tremendously over space and time, and requires some treatment prior to display on our currently limited computer monitors.
Previously common methods, particularly intrinsic-signal imaging, provided very small signals that required averaging over time before any response could be ascertained.

#### Correlation, Confounding Signals, and Non-linear dyanamics

#### Motion Artifact


## Exponential Expansion in Data Volume

The quality of cheaply available sensors has risen drastically.
These new sensors are everywhere.
They are quick to interface with, and the stream of information they provide once switched on is unlimited.
In the starkest contrast, however, storage for this never-ending stream of data is both finite in its capacity, and cumulative in consumption.

### Fields sharing this problem

Scientists all over find themselves with a lab full of sensors, data-rich and space-poor.
For better or worse they are not alone in dealing with this problem.
Massive investment has been poured into managing this issue for commercial purposes, and -- perhaps unsettlingly -- for governmental surveillance purposes.
The volume of recordable traffic bouncing through choke points of the internet exceeds the capacity of any government to store for more than 24 hours or so.
Likewise, the volume of video data streaming in from video surveillance systems as massive as those found for instance in China necessitates similar solution to what scientists and physicians have or should expect to deal with.

### Technological Opportunities to Expect

The solutions begin proposed by commercial and governemental giants are not radical.
They include calls for standardization in the format of data, enabling solutions for efficient transmission and storage to be shared through improvement of common tools.
Common streaming formats allow compression and storage to be abstracted from each application.
Databases are being developed to take advantage of heterogeneous computational architectures and distributed storage spaces.
Traditional document-based or relational databases are outperformed by graph-based "triple-store" databases, timeseries databases, and by databases programmed for specific architecture, like GPU-databases.
These sorts of developments are targeted at the bottlenecks restricting access to data, and early results suggest orders of magnitude improvements in throughput.
These tools are being developed with or without the contribution of physicians and scientists.
It would be prudent however to orient the tools specific to the needs of scientists and clinicians to take advantage of these developments as they become available.

### Cost






## Clinical translation potential

Any device that relies on optogenetics to deliver stimulation to neurons inherently shares the same hurdles to clinical translation, the requirement for gene-therapy and its associated risks.
Several early trials of viral transfection of cells had adverse effects including a greatly increased risk of carcinoma.
In these early studies, the DNA insertion location was uncontrolled leaving important regions of DNA tumor suppressor genes exposed to damage.
New methods that improve the safety of gene therapy have been developed.
Several of the more recent methods utilize adeno-associated virus  (AAV) and show greater control regarding DNA insertion and decreased DNA damage.
These more recent methods suggest a possibility that with continuing research, such a method may be developed without the potential for malignancy.

Working on a project that requires a technology that does not as of yet exist, represents one of the greatest educational benefits of this project.
That leap of faith into a future that does not exist requires us to depend on each other as a team of collaborators, as each of our work depends on the others’ success.
In order to succeed, we must do so together; and without eachother, our therapeutics would never reach their ultimate goal, the patient.
As such, we would share each success and setback in the same way whether such events occur within our own labs or labs across the country.



## (outline)
-   "Biomimicry" in Visual Processing
    -   This section describes how image and video processing in the computer relate to visual processing in the mammalian brain. The overall goal is to emphasize the advantage and importance of biomimetic development.
    -   Neuromorphic computing
        -   On chip image processing
            -   relation "edge computing"
        -   event-based image sensors
            -   "Artificial retina"
            -   tittto
            -   situations where event streams are advantageous
            -   asynchronous
            -   threshold-based
        -   convolutional neural-nets and deep learning for specific tasks
            -   similarities
            -   differences (substantial)
        -   genetic programming approaches to procedure optimization
            -   minimize latency
            -   maximize sensitivity and accuracy
            -   minimize computational cost
                -   minimize energy expenditure (metabolic efficiency)
    -   Visual stream processing
        -   feature extraction
        -   motion estimation and compensation
    -   Asymmetry of learning/training time and desired inference computation time
-   Common themes across projects
    -   finding common standards
        -   sticking to non-proprietary *open source* conventions
            -   optical parts (lens threads)
            -   file formats
            -   software libraries
            -   programming languages
        -   file transmission
            -   web-based
    -   Borrow from related sectors
        -   better developed in many cases
        -   surveillance
        -   media streaming for web/entertainment
        -   sports
        -   astronomy/telescopes
        -   medical imaging
        -   automotive



## Cranial Window

The two-stage cranial implant device described here was developed to enable reliable long-term optical access and intermittent physical access to mouse neocortex.
Our particular application required bilateral cortical windows compatible with wide-field imaging through a fluorescence microscope, and physical access to the underlying tissue for virus-mediated gene delivery and injection of exogenous labeled cells.
Optical access was required as soon as possible post-installation, and to be sustained for several months.
The design focused on addressing the issue common to other window designs meant for rodents: progressive degradation of the optical light-path at the brain-to-window interface caused by highly scattering tissue growth.
The elastomer insert is molded to fit the chamber and craniotomy, blocking tissue growth and providing a reliable optical interface for up to one year.
Additionally, the core design can be rapidly adapted to improve performance or for varying applications.

### Critical Elements

In assessing the design presented here, we can point to a few critical elements that facilitate the maintenance of the long-term optical quality.
Refer to the methods section for the specifics of surgical procedures for headplate installation and insert attachment.
These procedures were established after testing the variable formulations in protocol.

First, the design of the silicone insert must incorporate a mechanical barrier that fits along the edges of the craniotomy.
The barrier must be continuous along the circumference, and extend as far as the inside surface of the skull to be effective.

Achieving this tight fit without agressively impinging on the brain requires some sort of fine height adjustment capability.
The silicone insert must be attached at the correct height during the installation procedure, or shortly thereafter.
The insert must be depressed very slightly until full contact is made across the entire window, but pressing beyond necessary will quickly exert an undesired increase in intracranial pressure, increasing inflammation and adverse outcomes.
The mechanism for fine adjustment can be designed into the system, as is demonstrated in the second design presented here, or incorporated into the installation procedure, as is done in the first design.

Of particular note, we found that administration of antibiotic and anti-inflammatory drugs in the days surrounding any major surgical procedure had a substantial impact on the viability of the optical interface.
We used both corticosteroid and non-steroidal anti-inflammatory drugs, and attempts to exclude either ended poorly more often than not.

Lastly, sealing the chamber is absolutely vital to the viability of the optical interface, as well as health of the animal.
Equally critical to the long-term health of the imaging chamber was the requirement to establish and maintain an air-tight seal between the chamber and the outside world.
This includes a permanent seal between the chamber and skull, and a reversible seal between the chamber rim and optical insert.
How this is accomplished will be specific to the system design, but it is absolutely essential.

In addition to establishing and maintaining an air-tight seal, it is necessary to eliminate any and all pockets of air within the chamber.
Any air pockets that remain after installation will be susceptible to bacteria growth and may disrupt normal intracranial and intermembrane pressures.
The system presented here used sterile agarose fill to displace all air within the chamber prior to sealing.
Dead space surrounding the silicone insert, including that temporarily filled with agarose, will fill with fluid and eventually be overtaken by granulation tissue.
This process is helpful to the maintenance of a sterile chamber environment, so care should be taken not to disrupt it.
However, an excess of dead space will delay this process, and thus should be minimized when adapting the design.

Many attempts to test variations from the described procedures indicated that all elements mentioned above are equally critical to achieving a reliable imaging window with sustained optical quality.
Implementing the procedures as described or something similar should mitigate the primary obstacle to long-term imaging in mice and other rodents.
The need to pre-terminate imaging experiments due to light-path disruption by tissue ingrowth should be substantially reduced.
This capability will drastically reduce wasted time and resources for experiments of any duration, and will facilitate previously infeasible studies requiring long-term observation such as for research in aging or the progression chronic neurological disorders.

### Staging Implant Installation & Tissue Access

Configuring the implant as described, so as to enable a staged installation of multiple parts enables surgical procedures to be spread across multiple days.
This capability offers a number of advantages.
It may save time and resources -- particularly during the prototype stages -- by allowing time to ensure each implanted animal fully recovers from the initial procedure.
Additionally, the delay between surgeries allows the heightened inflammation and other immune system response triggered by craniotomy to normalize before attempting a tissue intervention that is sensitive to these conditions (e.g. viral or cell injections).
Through this mechanism the system offers the capability to image the first tissue intervention from day 0.

Similarly, designing the system to be installable in multiple stages enables trivial and repeatable tissue access at later time points by simple reversal of procedure for insert attachment.
The process may be comparable to a previously reported method of removing the entire glass window to access the tissue.
<!-- TODO: ref -->
With this system, however, the methods used to detach and reattach are faster and simpler and carry less risk of tissue damage compared.
Additionallly, the described methods of facilitating tissue access can be advantageous over a fixed access port by providing full access without compromising the image field. <!-- TODO: ref -->

<!-- - the practicality of separating the installation operations of a complete system has yet been explored -->
<!-- - the example of a comprehensive recording of the integration process of transplanted stem cells reported in this paper particularly well demonstrates the advantages of the ability -->


### Design Adaptation

The specific designs described in this report work well and have much to offer; however, the greatest asset of the underlying system is its potential for fast and unrestricted adaptation.
Most users will find greater utility in adopting components of the design and fabrication process, customized to fit their exact needs.
The design can be rapidly transformed to accommodate various applications or to modify its performance in response to new technologies and demands.
This rapid adaptability was a primary goal of this project, and informed our design and engineering decisions throughout developement.
Anyone with access to common laboratory equipment and moderate engineering and fabrication skills can produce a system to fit their particular needs.
As an inherent aspect of any design process, the adaptation of the original design evolved over the course of prototyping and testing.
In presenting two designs in this report, our intention was to demonstrate the technical feasibility of continuous development of a future-proof system.
The original system was adapted to accomodate the continuous evolution of image sensor technology, particularly the growth in size and resolution, expanding the field of view and allowing simultaneous access to cellular interactions across multiple brain regions using wide-field imaging.

<!-- remove? -->
We found that very subtle dimensional changes, and the addition of miniscule features can have a large impact on the success of any design.
We also found that adjusting features to address one aspect of functionality may have unintended effects.
For example, the inclusion of a thin skirt extending below the optical insert, which was incorporated to provide protection against tissue growth within the image field, may also facilitate the brain to conform to the optical interface of the window over time resulting in a flat imaging plane, optimal for wide-field imaging, which was unachievable previously.
<!-- remove? -->

### Rapid Fabrication

The rapid iterative process used here was made possible by using widely available rapid prototyping procedures, 3D-printing and laser-cutting.
<!-- continuous integration?? -->
Major progress of manufacturing and its increased versatility, providing better quality, customization, lower cost and shorter production time.
In an effort to compare various manufacturing technologies, we explored manufacturing the finalized product design through a number of companies and advanced with 3D metal printing with overall satisfaction at i.materialise -- we had also developed the parts through other rapid prototyping companies including Shapeways and Sculpteo.

- additionally, various features and functions of the silicone insert were transformed and extended to conform to new design requirements, some requiring distinctively different design approaches
- we could benefit from the versatility of silicone elastomer to cover a spectrum of design strategies to optimize its configuration

- overall, the design principles established from the initial development are robust and can be applied to new developments or refinements while preserving all qualities of the original implant
- the CAD designs of the reported systems are accessible in open source and can be modified and extended accordingly to the evolving demands and technologies
- We, the authors, are calling for replication, adaptation, evaluation (i.e. continued open / shared development).

### Further improvements

- primarily explored the ability to mold precise and complex features using silicone elastomer to discover configurations to improve image performance
- encapsulate electrodes or optical guides.
- Replace with combination optical + integrated electrode window
- Imaging as well as optogenetics stimulation
- More significantly, the encapsulation of carbon, metal colloidal particles or quantum dots into polymer hydrogel networks will impart them with exclusive thermal, sonic, optical, electrical or magnetic properties
- the polymer interface may provide means to penetrate through directly ^Ref^ for electrophysiological recording or drug infusion allowing recording and/or manipulation during imaging session
- thickness of the window, chromatic aberration, wide-field and 2-photon imaging
- lenses
- embed/ Integrate electronic components, such as LEDs for illumination or stimulation, or sensors.
- embed markers to facilitate positioning
- kinematic headplate for repeatable positioning
- new materials for fabrication
