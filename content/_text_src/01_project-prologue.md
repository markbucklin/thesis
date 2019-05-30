# Project Prologue {#sec:project-prologue}
This chapter describes several projects that were started early during my graduate studies. Each project is similar in that they are outside the realm of optical imaging of neural activity, which is the focus of the rest of this dissertation. Nevertheless, they are included here because the issues they bring up will later inform the approach I take in the work described in later chapters. The projects described in the following sections are also tied together by a common goal: to enable research in the neurosciences with translation potential for clinical applications.

## Neuroscience Technology Development Background {#sec:neuroscience-technology-development-background}

-   Electrophysiology, Histology, Functional brain imaging
    -   pros/cons of each
    -   very little compromise in tradeoffs
-   Filling the gaps between these three approaches
## Behavior Box {#sec:behavior-box}

I built an experiment apparatus for mice to enable a study being run by Jia-Min Zhuo. The goal of the study wasto elucidate the role of adult-born neurons on mouse behavior, specifically their performance in discrimination tasks. We called the apparatus the "Behavior Box" and modeled it after a commercially available but grossly over-priced box that itself came from other labs [@clelland2009, @creer2010].

The chamber was constructed with black plastic walls, extruded aluminum framing, and a perforated metal mesh floor 1 cm above a plastic waste tray. A 10-inch infrared touchscreen (ITouch Systems) was mounted over a 10-inch LCD monitor forming one wall of the chamber. An opaque mask with seven windows was placed over the screeen to limit where the mouse could touch. A water pump with infrared detector was located at teh other end of the chamber to provide reward for the water-deprived mice in the study. A white LED strip encircled the chamber from the top, and multiple speakers positioned outside to deliver sound cues. A web camera was fixed above the chamber to record and monitor mouse activity. My contribution to this project was the program for interact with all the system components. This program controlled and recorded experiment progress. I developed the program in MATLAB, and the main components of its function are described below.



### IR Touchscreen {#sec:ir-touchscreen}

The IR touchscreen provided a robust measure of the location of any contact with the animal's paws or nose. The screen was more reliable than either _resistive_ or _capacitive_ touchscreens, which are much more common in devices like POS systems and mobile phones respectively.

Files in this folder are used to run our "BehaviorBox" system, which features easily customizable control of experiments involving an infrared touchscreen and LCD display along with speakers, water-ports, lights, essentially anything that can be controlled electronically.

COGENT 2000 The graphics/visual-stimulation package used is missing from this folder due to size, but can be downloaded from the [source](http://www.vislab.ucl.ac.uk/cogent_2000.php)


### FrameSynx Toolbox {#sec:framesynx-toolbox}

The FrameSynx toolbox for MATLAB was built to synchronize continuous image acquisition with experiments conducted in the neuroscience laboratory setting. While the experiments are conducted in separate software (and potentially on a different computer), FrameSynx listens for messages to start/stop the experiment, start a trial, etc. and responds accordingly by controlling one or multiple cameras and illumination devices, and synchronizing this information with the data acquired. The major contribution to the "Behavior Box" package, and also to later image processing packages is the procedure for definition and storage and of experimental data files, which will be touched on briefly in [@sec:data-file]

### Data File {#sec:data-file}
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
## Spherical Treadmill & Virtual-Reality

<!-- ## Spherical Treadmill -->

A virtual reality system was assembled, adopting methods from the Harvey lab lab [@harvey_intracellular_2009]. This system allows placement of a head-restrained mouse on an 8-inch diameter polystyrene foam ball supported by a cushion of compressed air, surrounded by a toroidal projection screen. Ball rotation is tracked with two optical computer mice placed orthogonal to each other. Movement vectors are fed into a virtual-reality engine that updates the image projected onto a toroidal screen surrounding the ball, simulating movement through any arbitrary virtual world. Movement vectors are recorded as an arbitrarily scaled translation in the mouse-relative X and Y axes and rotation around the Z axis, at approximately 30 ms intervals. This behavioral apparatus has the advantage of allowing trivial measurement of the mouse’s movement ability while the mouse is head-fixed. The disadvantage is the time and potential confounds involved with training individual mice to use the system.

### Treadmill contstruction

#### Figure: {#spherical-treadmill}
![spherical-treadmill-VR/01-treadmill-mouse-running ](img/0spherical-treadmill-VR/01-treadmill-mouse-running.jpg){#spherical-treadmill-VR1-treadmill-mouse-running}
![spherical-treadmill-VR/02-treadmill-front ](img/0spherical-treadmill-VR/02-treadmill-front.jpg){#spherical-treadmill-VR2-treadmill-front}
![spherical-treadmill-VR/03-treadmill-top ](img/0spherical-treadmill-VR/03-treadmill-top.jpg){#spherical-treadmill-V03-treadmill-top}
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
## Closed-Loop Diffuse Optogenetic Neuromodulation

<!-- carbon fiber electrode & LED -->
<!-- (Deep-Target Carbon-Fiber Electrode Array and Bilateral Illumination) -->

Chronic implant for long-term multi-site recording and optogenetic neuromodulation. The implant is fixed to a mouse’s skull with dental cement, and sits on top of bilateral 5 mm craniotomies. Electrodes are driven through 32 guiding-tunnels along pre-determined trajectories to bilateral targets in thalamus, striatum, prefrontal cortex, motor cortex and auditory cortex. 2 High-intensity LEDs are coupled to optical fibers driven to mediodorsal and centromedial thalamic nuclei. Electrode trajectories are computed in stereotaxic coordinates and imported into CAD model to construct guiding-tunnel features that facilitate correct placement of electrode tips in brain targets and connection to a circuit board. A-C) CAD model of implant. D) Circuit board for electrode termination and LED power.

<!-- from submitted NRSA/F31 Application -->

Brain disease, often accompanied by enormous personal and economic costs, continues to emerge as among the most pressing contributors to the global disease burden. Unprecedented advances in biotechnology and in portable electronics support tremendous opportunity to conduct research with excellent potential for advanced understanding, improved treatments, and one day cures for these devastating diseases, disorders and conditions. The aim of this project was to would leverage technology from the fast-moving forefronts of electronics and biomedical research to build a next-generation neuroprosthetic.

### Background

Deep Brain Stimulation (DBS) has been used clinically since the early 1990’s, and is currently approved by the FDA for treatment of Parkinson’s disease (PD) and essential tremor, with Humanitarian Device Exemptions for OCD and dystonia. In 1987 a French neurosurgeon observed during a thalamotomy procedure - where stimulation was applied for localization of ventralis intermedius - that high-frequency stimulation was able to suppress an extrapyramidal tremor (@benabid_combined_1987; @liker_deep_2008). Subsequent studies in a non-human primate Parkinson’s model suggested high-frequency stimulation (\~100-200 Hz) of the Subthalamic Nucleus (STN) was as effective as a lesion, in that it“jammed” neural activity at the tip of the electrode, yet it was tunable and reversible (@eusebio_does_2012). Long term efficacy is around 50% using a standard clinical scale (UPDRS III)(@beuter_delayed_2009); DBS can provide symptomatic improvement in tremor, rigidity, and bradykinesia, and can also facilitate a substantial reduction in levodopa dosage and consequent reduction in its major side-effects, i.e. dyskinesia (@eusebio_does_2012). While DBS has substantially improved our ability to treat PD and other movement disorders, the therapeutic effect remains insufficient and unpredictable.

The mechanism by which DBS suppresses parkinsonian symptoms is still uncertain. However, there are growing evidence to suggest that increases in synchronized oscillatory activity in basal ganglia and thalamo-cortical circuits – so-called _Beta-frequency_ oscillations – represents a pathologic and moreover _symptomatic_ state in PD, the disruption of which is accomplished by high-frequency stimulation (@wilson_chaotic_2011). Meanwhile, synchronized activity in the beta range is also involved in many normal cognitive functions, and abnormal synchronization is likewise a mechanism for numerous other neurologic and psychiatric disorders (@velazquez_biophysical_2012),(@andrews_neuromodulation_2010). Consequently DBS has potential to become an effective treatment for epilepsy (@ii_dynamic_2013),  OCD(@bourne_mechanisms_2012), depression ( @mayberg_deep_2005, @mayberg_targeted_2009), Alien Hand Syndrome and Tourette’s  (@krack_deep_2010), obesity  (@taghva_obesity_2012), alcoholism  (@heldmann_deep_2012), addiction (@luigjes_deep_2012), autism  (@sturm_dbs_2013), Alzheimer’s disease  (@laxton_deep_nodate), and schizophrenia (@white_dysregulated_2013). There are a large number of case-reports describing off-label DBS treatments, and a few small clinical trials  (@kennedy_deep_2011-1; @sarem-aslani_industrial_2011). In 2009 Medtronic received a Humanitarian Device Exemption  (HDE) to market a DBS device for OCD, called _Reclaim_ (“Reclaim^TM^ Deep Brain Stimulation for Obsessive Compulsive Disorder  (OCD) Therapy - H050003”2013). While closed-loop DBS might be even better suited for the complex dynamics of psychiatric disorders, most investigators have stuck with movement and seizure disorders  (@sarem-aslani_industrial_2011), presumably feeling more comfortable with well-established animal models and FDA-approved applications; or perhaps feeling _less_ comfortable with the ethical questions inherent to treating of behavior.

### Project Plan

Deep brain stimulation  (DBS) has revolutionized the treatment of neurological and psychiatric diseases over the past couple decades. A DBS device is essentially a cardiac pacemaker reconfigured to stimulate a small region of brain near the tip of an electrode with high-frequency pulses of electrical current; despite this simplicity, DBS has been used widely for treating movement disorders, such as Parkinson’s disease  (PD) and dystonia. The impressive performance of DBS on alleviating movement deficits associated with PD and dystonia has motivated a number of ongoing clinical trials on assessing its use in treating other brain disorders, such as obsessive compulsive disorder and depression. However, benefits of DBS treatment are unpredictable and show varying degrees and patterns of symptom suppression across patients. Unfortunately, this technology in its current iteration has been unable to overcome these limitations. This is likely due in part to a need for neural implant devices that are capable of more numerous and specific stimulation contact areas. Additionally, the DBS mechanism of action remains unknown and this further limits its ability to become wholly sufficient treatment. The central goal of this project is to develop a novel adaptive neuromodulation platform with increased neural contacts and their specificity as well as to examine the therapeutic mechanisms of DBS. My hypothesis was that aberrant neural network dynamics underlie the behavioral symptoms of brain disorders, and DBS therapeutic effect is through scrambling pathological neural network patterns. While I would primarily focus on PD here, the principles discovered through this study should be easily generalized to design novel therapies for other neurological and psychiatric disorders.

#### Design a novel adaptive neuromodulation platform for closed loop control of neural activities {#sec:f31-aim1}

Functional neural systems underlying brain disorders are likely complex, impacting interconnected brain areas. To reliably distinguish normal and pathologic neural network states, such as the “on/off” states in PD, it would be advantageous to simultaneously measure neural activities in multiple relevant brain areas. The platform proposed here consists of a bidirectional neural interface with penetrating silicon electrodes capable of simultaneously recording from multiple sites interspersed with LED-coupled optical-fibers for multi-point optogenetic neuromodulation. I would use the commercially available multicontact silicon electrodes, known as Michigan probes, that are 5um thick and capable of recording up to hundreds of locations simultaneously. To perform neuromodulation with high spatiotemporal precision, I would use optogenetic methods to activate or silence specific neurons expressing rhodopsins in mice using certain colors of light. Even though this system is designed for mice in this study, the principles demonstrated here have a clear translational path to humans.




#### Implement a library of closed loop modulation protocols with machine-learning algorithms {#sec:f31-aim2}

To efficiently determine the neural network states responsible for a specific disease condition, I would use machine-learning algorithms to implement a library of optimized strategies. Specifically, this system consists of two parts: The first is a closed-loop control system responsible for gathering and analyzing streams of neural and behavioral data in real-time to estimate a neurobehavioral state, and then applying a state-specific optogenetic control with patterned light into the brain. The second component is a slower and more complex routine that records and analyzes the streams of neural and behavioral data, and assesses the performance of state-estimates and controls applied by the real-time component. State-response strategy updates would be periodically fed from the thoughtful controller  (2^nd^ component) to the real-time decision maker  (1^st^ component) using variations of traditional machine-learning algorithms to generate successively optimized strategies.

#### Systematically evaluate the neural circuit mechanisms underlying DBS therapeutic effect on PD {#sec:f31-aim3}

Even though the precise therapeutic mechanism of DBS is unclear, DBS has revealed tremendous information about the brain’s functionings and dysfunctionings. For example, pathological beta oscillations, oscillations around 20Hz, have been widely observed in the cortical-basal gangion circuits in PD patients implanted with DBS electrodes. As the causal role of beta oscillations is yet to be established, it is likely that the neural network states identified in Aim 2 would conform and converge into distinct archetypes, such as beta oscillations within the cortical-basal gangion circuits relevant to PD. I hypothesize that neuromodulation outside of the classical PD neural circuit would be therapeutic, in so far as such neuromodulation is capable of scrambling pathological network dynamics. Once proven correct, the proposed therapeutic mechanisms of DBS through altering neural network pathological representationswould provide a basis for a new generation of neural circuit based neuromodulation therapies.

### Significance

This proposal focuses on developing a novel closed-loop neuromodulation system using optogenetics and an intelligent control algorithm. This approach enables automation of a search for individual-optimized stimulation patterns, and adaptation of these patterns over time in response to fluctuating symptoms.

#### Justification for This Approach

The novel closed-loop neuromodulation system as presented here has far reaching implications. These include improved patient symptoms, fewer surgical procedures  ( for battery replacement) and broader application in terms of patient population and disease profiles. The increase in number and range of stimulation sites and rapid real-time response rate of the proposed mechanism would yield such results  (Lozano and Lipsman 2013). Furthermore, the information on DBS mechanism gleamed from this study would have immediate effects on the current technology

#### Shortcomings

Any device that relies on optogenetics to deliver stimulation to neurons inherently shares the same hurdles to clinical translation, the requirement for gene-therapy and its associated risks. Several early trials of viral transfection of cells had adverse effects including a greatly increased risk of carcinoma. In these early studies, the DNA insertion location was uncontrolled leaving important regions of DNA tumor suppressor genes exposed to damage. New methods that improve the safety of gene therapy have been developed. Several of the more recent methods utilize adeno-associated virus  (AAV) and show greater control regarding DNA insertion and decreased DNA damage. These more recent methods suggest a possibility that with continuing research, such a method may be developed without the potential for malignancy.

Working on a project that requires a technology that does not as of yet exist, represents one of the greatest educational benefits of this project. That leap of faith into a future that does not exist requires us to depend on each other as a team of collaborators, as each of our work depends on the others’ success. In order to succeed, we must do so together; and without eachother, our therapeutics would never reach their ultimate goal, the patient. As such, we would share each success and setback in the same way whether such events occur within our own labs or labs across the country.

### Research Design and Methods

The initial stages of this project were focused designing the physical components of the bi-directional neural interface – and the peripheral aspects of aim 2 – development of an automated behavioral assay for our prototypic animal model of Parkinson’s disease.

#### Neural Interface

A _chronic neural implant_ is required for this project, as the machine-learning component of this closed-loop system would require time and signal stability to function effectively. While our lab currently employs chronically implanted drivable tetrode arrays, this project would benefit from dropping this complexity in favor of _static_ electrodes that are set to their prescribed position during the initial surgery, and never thereafter.


Sustained penetration of brain tissue with large  (15 microns) diameter electrodes provokes a chonic inflammatory reaction to the foreign body eventually encapsulates the electrode in a “glial scar” and inhibits regeneration of neural process in the vicinity  (@polikov_response_2005). The chronic implant designed for this project would use silicon electrodes to record from deep brain targets, and for shallow targets would employ _carbon fiber electrodes_  (4-10 microns) using methods developed in a nearby collaborating lab  (@guitchounts_carbon-fiber_2013). Carbon fiber is cheaply available with a range of electrical properties, but the common properties of high modulus and small diameter – 5-10 micron vs. 30-50 microns for typical commercial microwire arrays  (@ward_toward_2009) – allows carbon fiber to penetrate brain tissue without deforming, and to remain long-term without provoking an inflammatory reaction  (@kozai_ultrasmall_2012).

#### LEDs

High-intensity LEDs would be incorporated into the implant in favor of a traditional fiber-coupled laser primarily for their ability to _diffusely_ illuminate neurons over a _large area_ and their _scalability_, which would be vital for _multi-site_ and _chronic_ modulation. LEDs do not couple efficiently to optical fibers of small diameter  (\~200 microns is typical in optogenetics labs), but they can provide a far greater _luminous intensity_ in a greater variety of wavelengths than lasers, at a fraction of the cost. The proposed project would incorporate LEDs built into the implant, with their emitting surfaces _closely coupled to the_ _brain surface_.

LED arrays, and Digital Micromirror Devices  (DMDs) and Liquid Crystal on Silicon (LcoS) chips have been considered as a means of greater spatial control of light intensity; any of these would be incorporated if the technology improves during the lifetime of the project, but the current state of technology places heavy restrictions on space and/or power requirements to merit incorporation into the implant. Incorporating multiple LEDs (4 to 8) would enable semi-independent activation of neurons in widely-separated brain regions, the proposed project would need to _overlap_ this diffuse control with more precise targeted delivery of opsins (@packer_targeting_2013).


#### Figure: PCB schematic for head-mounted carbon fiber electrode array {#pcb-top}
![top 1](/images/pcb/pcb_top1.png){#pcb-top1 height="1.0in"}
![top 2](/images/pcb/pcb_top2.png){#pcb-top2   height="1.0in"}
![top 3](/images/pcb/pcb_top3.png){#pcb-top3  height="1.0in"}
Caption: Circuit Board for connection to carbon-fiber electrodes and LEDs


Here I describe the design strategy for the physical implant outlined above that would provide pathways to and from the mouse brain for the the electrodes and LEDs described above, as well as the circuit board that sits within this implant and consolidates all _input/output_ signals for connection with a computer. This project would strive to ensure the bidirectional chronic neural implant is _resilient_ to the abuse it would surely endure over the weeks to months of service _affixed to the cranium_ of a laboratory mouse. The outcome we wish to avoid is _movement_ of the penetrating electrodes within the brain tissue when external forces act on the implant, or when internal forces cause the animals brain to move relative to its skull. Moreover, if the electrode is unable to move with the brain there is substantial risk of electrode breakage.

We are designing the implant to address this potential issue from two directions: the first strategy is to make the implant as _tolerable_ for the animal as possible by minimizing its weight, rounding all edges, and fabricating with a bioinert material such as polymethylmethacrylate (PMMA), polyetheretherketone (PEEK), and silicone elastomer. Elastomer or functionally similar material would be used to encase the printed circuit board (PCB) once electrodes are driven to their prescribed depth and electrical connections made. The encasement would cover the entirety of the board with the exception of two connectors for electrophysiology readout and LED power, and a heatsink connector for each LED . Heatsinks for the LEDs would either be copper tube or carbon fiber. The second strategy for minimizing electrode movement involves _floating_ the connection between the electrodes and the PCB. The goal of this procedure is to allow the electrode – with one end in the brain and the other in a plated through-hole – to move vertically and laterally relative to the PCB while maintaining electrical contact with the pad. The method for accomplishing this is still being developed; fortunately its success is not critical to the project, but merely an improvement.

#### Electrophysiology

The neural interface proposed in this document would record 32 signals simultaneously. To minimize the risk that poor trajectory planning could have on the results described in [@sec:f31-aim3], we would specify targets redundantly. Thus, for each round of testing with our Parkinson’s mouse model we would select 8 brain areas to record from redundantly and bilaterally. 7 of the 8 would be selected from a set of brain areas for which claims have been made in the literature suggesting functional relevance to Parkinson’s disease; as a _control_ for each round, the 8^th^ would be selected from a set of areas for which no connection with PD has ever been reported. Each round would begin with a modified CAD model of the implant (for modified electrode trajectories), which would be 3D printed or fabricated on a 4-axis CNC-mill in the lab.

#### Front-end Digitization

Recording would be accomplished with the RHD2132 digital electrophysiology interface chip produced and made freely available by Intan (“RHD2000 Amplifier Chips | Intan Technologies” 2013). The chip accomplishes as much as a traditional electrophysiology system at a price that is orders of magnitude less, and a package that takes up much less space.

#### Signal Filtering, LFP and MUA

Electrophysiology data would be digitally filtered on the Intan chip using parameters selected by the machine-learning routine. The only hard limits on bandwidth would be dictated by the requirements of the analog to digital converter (ADC), i.e. a high-pass filter to remove drifting DC offsets and a low-pass filter to prevent aliasing. These limits would vary depending on electrode impedance and sampling frequency, but would have cutoff frequencies or roughly 0.1 Hz and 10 KHz respectively. While there is much published in regard to the spatial extent and information content in common named frequency bands, the algorithm that selects filtering parameters would not incorporate any of these assumptions.

That being said, we expect the learning algorithm would find more _reliably relevant_ features in the classic Local Field Potential (LFP) range, which is typically low-pass filtered with a cut-off around 300 Hz. It’s thought that LFP represents a sum of neural activity from cells within a 50-250 micron radius of the electrode tip, or more if activity is highly correlated (Lindén et al. 2011). This spatial scale allows for variability in electrode position across subjects, and for small movements of the electrode over time (Andersen, Musallam, and Pesaran 2004).

<!-- Aim 2 – Optimization of closed-loop stimulation pattern with machine-learning algorithms:
----------------------------------------------------------------------------------------- -->

Closed-loop input/output would be handled at three levels by multiple computers.

#### Input/Output

The lowest level – implemented on the Intan RHD2132 amplifier chip and RHD2000 evaluation board – handles analog-to-digital conversion and filtering of electrophysiology data. Also at this level – but implemented on a different computer – are the movement tracking functions described above.

#### Closed-loop State Estimation and Adaptive Neuromodulation

Streams of electrophysiology and behavior/movement data are sent to the second level, a _real-time_ computer system encapsulating all the _closed-loop_ functions of the platform. This computer would use the _Real-time eXperiment Interface_ (RTXI; www.rtxi.org), an open-source Linux-based operating system supported by the NIH (Lin et al. 2010). This system provides modules for data acquisition, storage, synchronization of output, and more. RTXI would be installed on an ARM-based embedded system such as the open-source _Puggle_, or a similar embedded processor from Texas Instruments. What is _Puggle_? _“Puggle is ARM-based, real-time data acquisition and processing tool. It is designed to sense, process, and react to both analog and digital input signals in hard real-time. Puggle is designed for closed-loop electrophysiology applications…_ (<http://www.puggleboard.com)>._”_ The closed-loop routine running at this level would analyze neural and behavioral data using parameters from the next higher level. The analysis step would conclude with two estimates for _neural_ and _behavioral state_, with this combination _mapped_ to an output routine with parameters that are also passed down by the higher level. The specifics of the output routine would be handled by a connected microcontroller, would be interrupt-driven, and would ultimately control the power of optical output from each LED over time.

#### Generation and Evaluation of Stimulus Paradigm

The highest level of processing would be implemented in a _non-real-time_ environment, MATLAB on Windows. Raw data and activity logs from the closed-loop routine would be written to disk continuously. A machine-learning routine would analyze these data and send updated parameters to the closed-loop computer as described below. All parameter updates would also be written to disk in synchrony with acquisition for retrospective analysis as described by [@sec:f31-aim3].

#### Machine-Learning & Optimization

The process for selecting exactly how to stimulate a brain follows a common routine both in the clinic and research laboratory. After having spatially localized an electrode in the intended position, physicians (and neuroscientists) would begin stimulation with a temporal pattern that is fully defined with two or three parameters (e.g. a binary pulse-sequence with constant amplitude, frequency, and duty-cycle). Effects of stimulation are often immediately apparent. The physician or neuroscientist – let’s just call this person the “_decision-maker_” – would evaluate the subjects behavior and compare this evaluation to the desired _target_ behavior. In the example case of PD the deviations from this “target behavior” include akinesia, gait-inbalances, and postural instability, but might also include iatrogenic responses such as dyskinesias or diplopia. The decision-maker then draws on their experience to estimate which parameters should be adjusted, and with what magnitude in order to shift behavior towards the intended target. In the absence of experience, the decision-maker relies on _education_ (many years of it in either the physician or scientist’s case). The first adjustment is applied, and the effect on behavior is evaluated once again. The inexperienced decision-maker learns something new, and can use this new information in combination (or perhaps even _in contrast!)_ with their prior education to estimate the effect of adjustments in any or all available parameters, and make a decision that begins the cycle again.

Humans are excellent learners – undoubtedly better than any other species on Earth. Computers are not; they are painfully literal and would not flip a bit without being told to. Their persistence, however, is their saving grace, and is the aspect that makes machine learning possible, given creatively designed seeds of human thought and recursive and inversive instructions for expanding this seed. The process of cyclic evaluation and decision-making described above would be used as a model for a machine-learning algorithm with two goals: optimizing the identification of _disease-relevant neural states_, and optimizing a neuromodulation routine for _disease-related symptom reduction_.

#### Identification of Neural State

The algorithm used to optimize closed-loop identification of neural neural state would be developed from a set of common _pattern-recognition_ algorithms and _semi-supervised learning_ models, including support vector machines (SVMs), logistic, polynomial, or linear regression, principal component regression (PCR), Kalman filtering, and hidden Markov models (HMM). These algorithms would be applied to recorded data and _selected for implementation_ in the closed-loop routine based on measures of performance (discussed below) and ability to meet computation-time specifications (&lt;\~250 ms).

#### Stimulus Sequence Generation

Each neural state would be mapped to a neuromodulation routine that is applied continuously (with _sub-millisecond_ response time) until the next state-estimate and routine update. Each stimulation sequence would initially be defined by random selection from a set of sequence _archetypes_, and further specification by random selection of _archetype-specific-parameters_. The real-time process would handle application of the state-mapped sequence, but the sequence formation routines would be run in the non-real-time process. Both open-loop (for control/comparison) and closed-loop stimulation archetypes would be generated from three sources, with generic examples from each source in the table below:

1.  Common achetypes reported in literature, e.g. DBS-style constant pulse generation.

2.  Novel archetypes generated in creative thinking and discussion sessions with colleagues.

3.  Concocted archetypes from chaotic-generation algorithm

_Constant DBS-type square wave_ with parameters for amplitude, frequency, and pulse-width/duty-cycle (open-loop) LED power (stimulation) in each area of control proportional to _arctangent of phase difference_ between two areas. Chaotically generate functions by recombining elements from the novel and common archetypes, and also by applying every function available in MATLAB (use _what_ and _lookfor_ functions applied in _try…catch…_ blocks to find statements that work with given data) _Triggered impulse response_ with parameters defining a threshold or feature from any channel that triggers stimulation of some shape that initiates at some delay (Rosin et al. 2011) (closed-loop) Stimulation is continuously proportional a _ratio of band-pass filtered signal magnitude_ from arbitrarily selected channels.\
_Phase Cancellation_ of filtered signal from any defined channel (Brittain et al. 2013) (closed-loop) Signal from one channel is used to construct _wavelet_ then convolved with other channels with output determining pulse-shape

The number of possible archetypes used by sourcing in these ways would be extensive, so much so that trying them manually would be unmanageable. This is where the automated machine-learning algorithm which selects, applies, evaluates, and optimizes each routine for several hours every day becomes absolutely necessary.

#### Stimulus Optimization

As the real-time component runs its state-response cycle and logs data, the non-real-time machine-learning component would evaluate its performance and update parameters in an attempt to optimize _symptom suppression_. This evaluation process would identify “hot” parameters (those with large effect), and continue sending parameter updates until symptom suppression cannot be optimized further. This process would be slow to allow observation of subtle effects of stimulation in noisy data. If manipulation of all available parameters yields no changes in behavior, a new stimulation archetype would be tried.

This type of process is sometimes referred to as a _Genetic_ _Algorithm_, where the parameters for a particular archetype would be viewed as the _genes_ that define a species. The _fitness_ of each individual combination genes (i.e. parameters) determines survival and consequent ability to pass genes to the next generation. In our implementation, we’d be running multiple species (i.e. archetypes) as well, with the expectation that many would be quickly declared extinct.

### Systematic evaluation of potential DBS targets and mechanisms in PD mouse model:

To that end we are currently inducing a quantifiable PD-like state in mice with a unilateral injection of the neurotoxin 6-hydroxydopamine (6-OHDA) into the striatum, and subsequent administration of apomorphine to provoke side-biased motor deficits (Iancu et al. 2005) . Side-biased“turning” behavior is quantified autonomously on two distinct platforms, a computer-vision system that allows free movement, and a virtual-reality spherical treadmill platform that simulates free movement.

#### Metrics of Behavior

Two testing platforms would be used to assess changes in behavior over time. Behavior is analyzed and quantified in real-time, and would be synchronized with electrophysiology and made available as another stream of input for the closed-loop routine. The quantification routine creates a signal that is representative of symptom severity. For our unilaterally lesioned mouse model of PD the most readily observable impairment is the inability to walk straight; mice would turn in circles contralateral to the lesion when given intraperitoneal apomorphine. The behavioral apparati are described below.
