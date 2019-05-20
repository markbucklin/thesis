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


<!-- <div id="fig:animal-tracking-bowl">
![raw](img/animal-tracking/01raw.jpg){#fig:animal-tracking-bowl-raw}
![black-and-white](img/animal-tracking/02black-and-white.jpg){#fig:animal-tracking-bowl-black-and-white}
![twoframes](img/animal-tracking/03twoframes.jpg){#fig:animal-tracking-bowl-twoframes}
![tail_ID](img/animal-tracking/05tail_ID.jpg){#fig:animal-tracking-bowl-tail_ID}
![mousedata1](img/animal-tracking/06mousedata1.jpg){#fig:animal-tracking-bowl-mousedata1}
![mousedata1close](img/animal-tracking/07mousedata1close.jpg){#fig:animal-tracking-bowl-mousedata1close}
![mousedata2](img/animal-tracking/08mousedata2.jpg){#fig:animal-tracking-bowl-mousedata2}
![mousedata1fiberon1](img/animal-tracking/09mousedata1fiberon1.jpg){#fig:animal-tracking-bowl-mousedata1fiberon1}
<!-- Caption: Processing steps for automated rotation counting procedure used in hemiparkinsonian mouse study -->
</div> -->
## Spherical Treadmill & Virtual-Reality

<!-- ## Spherical Treadmill -->

A virtual reality system was assembled, adopting methods from the Harvey lab lab [@harvey_intracellular_2009]. This system allows placement of a head-restrained mouse on an 8-inch diameter polystyrene foam ball supported by a cushion of compressed air, surrounded by a toroidal projection screen. Ball rotation is tracked with two optical computer mice placed orthogonal to each other. Movement vectors are fed into a virtual-reality engine that updates the image projected onto a toroidal screen surrounding the ball, simulating movement through any arbitrary virtual world. Movement vectors are recorded as an arbitrarily scaled translation in the mouse-relative X and Y axes and rotation around the Z axis, at approximately 30 ms intervals. This behavioral apparatus has the advantage of allowing trivial measurement of the mouse’s movement ability while the mouse is head-fixed. The disadvantage is the time and potential confounds involved with training individual mice to use the system.

### Treadmill contstruction

<!-- #### Figure: {#spherical-treadmill}
![spherical-treadmill-VR/01-treadmill-mouse-running ](img/0spherical-treadmill-VR/01-treadmill-mouse-running.jpg){#spherical-treadmill-VR1-treadmill-mouse-running}
![spherical-treadmill-VR/02-treadmill-front ](img/0spherical-treadmill-VR/02-treadmill-front.jpg){#spherical-treadmill-VR2-treadmill-front}
![spherical-treadmill-VR/03-treadmill-top ](img/0spherical-treadmill-VR/03-treadmill-top.jpg){#spherical-treadmill-V03-treadmill-top}
Caption: this treadmill supports behavior. -->




### Water Delivery



<!-- #### Figure: {#water-delivery}
![spherical-treadmill-water-delivery/01-water-port ](img/0spherical-treadmill-water-delivery/01-water-port.jpg){#spherical-treadmill-water-deliver01-water-port}
![spherical-treadmill-water-delivery/02-water-delivery ](img/0spherical-treadmill-water-delivery/02-water-delivery.jpg){#spherical-treadmill-water-delivery2-water-delivery}
![spherical-treadmill-water-delivery/03-water-delivery-zoom ](img/0spherical-treadmill-water-delivery/03-water-delivery-zoom.jpg){#spherical-treadmill-water-delivery3-water-delivery-zoom}
Caption: waterport -->





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



<!-- #### Figure: {#motion-sensors}
![spherical-treadmill-motion-sensors/01-motion-sensors-installed ](img/0spherical-treadmill-motion-sensors/01-motion-sensors-installed.jpg){#spherical-treadmill-motion-sensors-motion-sensors-installed}
![spherical-treadmill-motion-sensors/02-motion-sensors ](img/0spherical-treadmill-motion-sensors/02-motion-sensors.jpg){#spherical-treadmill-motion-sensors-motion-sensors}
Caption: Motion Sensors for tracking ball movement. can be used to control and record speed and direction of mouse movement within the VR world. -->
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
![top 1](img/pcb/pcb_top1.png){#pcb-top1 height="1.0in"}
![top 2](img/pcb/pcb_top2.png){#pcb-top2   height="1.0in"}
![top 3](img/pcb/pcb_top3.png){#pcb-top3  height="1.0in"}
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

## CNC Mini-Mill

### Project Summary

Deep Brain Stimulation (DBS) has been used clinically since the early 1990’s, and is currently approved by the FDA for treatment of Parkinson’s disease (PD) and essential tremor, with Humanitarian Device Exemptions for OCD and dystonia. However, benefits of DBS treatment are unpredictable and show varying degrees and patterns of symptom suppression across patients. This is likely partly due to a need for neural implant devices capable of more numerous and specific stimulation contact areas, as well as a lack of knowledge regarding DBS mechanism of action. There is growing evidence, that suggests that increases in synchronized oscillatory activity in certain brain circuits represent a pathologic and moreover symptomatic state in PD, the disruption of which is believed to yield the beneficial effects of DBS. Likewise, this abnormal synchronization is a mechanism for numerous other common neurologic and psychiatric disorders that include epilepsy, obsessive compulsive disorder and depression. The central goal of this project is to develop a novel adaptive neuromodulation platform that increases both the number of neural contacts and the specificity of their location as compared with DBS in order to create a more effective and targeted treatment alternative, and in the process to examine DBS therapeutic mechanisms. Development of such an alternative has far reaching implications including improved patient symptoms, fewer surgical procedures and broader application across patient populations. To reach Aim 1, a bidirectional neural interface with penetrating silicon electrodes capable of simultaneously recording from multiple sites of the Parkinson’s mouse model intracranially. Such a device would be developed and interspersed with LED-coupled optical-fibers for multi-point optogenetic neuromodulation. To perform neuromodulation with high spatiotemporal precision, optogenetic methods would be used to activate or silence specific neurons expressing rhodopsins in mice using certain colors of light. For Aim 2, machine-learning algorithms would implement a library of optimized strategies to efficiently determine the neural network states responsible for a specific disease condition using a closed-loop control system and a second slower, more complex routine routine that records and analyzes the streams of neural and behavioral data, and assesses the performance of state-estimates and controls applied by the real-time component. The neural network states identified in Aim 2 are expected to conform and converge into distinct archetypes, such as beta oscillations, within the cortical-basal gangion circuits outside of the classical PD neural circuit. Once proven correct, the proposed therapeutic mechanisms of DBS through altering neural network pathological representations would provide a basis for a new generation of neural circuit based neuromodulation therapies.

## Photo Absorption and Thermal Dissipation in Brain Tissue Optogenetics

<!-- Thermal Modeling of laser light delivery to brain through fixed fiber optic -->
This was a modeling project. <!-- TODO -->
# Microscopy 1

This section describes the background in microscopy in the neurosciences, and also how it relates to imaging in healthcare and electrophysiology in neuroscience. It will also describe the basic elements necessary for the construction of a microscope in a laboratory where calcium imaging in an animal is available. It will also refer to later sections which cover the design and construction of mechanical elements for animal handling and optical access (i.e. the headplate and a chronic optical window).

<!-- from the frontiers paper -->
Optical imaging has traditionally involved wide-field imaging or two photon imaging, each with their own distinctive advantages and disadvantages

In recent years, two photon microscopy has been a preeminent choice for imaging in tissue, because of its high spatial resolution, and tissue penetrating features

Two photon calcium imaging has been broadly applied to individual cells or subcellular components of neurons including spines and axons

Because two photon microscopy uses a scanning mechanism, the signal to noise ratio is influenced by the time spent imaging each point, and the spatial resolution is determined by the number of points scanned to obtain each image. As a result, the size of the imaging field is inversely correlated with the overall temporal resolution while maintaining a relatively high signal-to-noise ratio, thus, two photon calcium imaging is often performed on a small area or on a sparse network of cells, when dynamic responses with high temporal fidelity is necessary.

Wide-field, or single photon imaging has been in use for several decades and was first used to characterize the functional architecture and hemodynamic responses in brain tissue

However, this technique has seen a renaissance recently due to its simple instrumentation, relatively inexpensive cost, and the improvements in neural signal indicators. Optical imaging and two photon microscopy have traditionally been performed in head-fixed preparations, but recent advances have also made it possible to perform wide-field calcium imaging in freely moving animals, through miniaturized and wearable microendoscope systems

While wide-field imaging lacks the spatial resolution to resolve fine subcellular structure or the penetrating properties available with two-photon, it is possible to obtain clear neurites and somatic features, including spike detection

Because a single photon microscope does not rely on scanning features, it can be used to sample a larger field of view without sacrificing sampling rates. Additionally, recording sessions may be less sensitive to fluorophore bleaching than other techniques, which makes it possible to perform sustained illumination and subsequent imaging for an extended period of time - a desired feature for analyzing neural networks during some behavior paradigms (*e.g.,* repeated trial learning paradigms). Thus, wide-field imaging offers an advantage if the objective is to simultaneously recording hundreds of neurons in the brain of a living and behaving animal with high temporal fidelity.

<!-- from the frontiers paper -->
## Background: Brain Imaging and Microscopy in Neuroscience

## Fluorescent Proteins Background

-   GCamP
    -   vs dyes


### Fluorescence Microscope Types Background

-   2p, confocal, wide-field
    -   tissue scattering
        -   depth comparison
    -   cost & complexity
    -   (address scalability later)

### Widefield Microscope COnfiguration

-   historical trend/shift from *finite* to *infinite* conjugate type
    -   infinite type uses *infinity corrected lenses*

### Filters

-   excitation
-   emission
-   for epifluourescent microscope configuration: dichroic beamsplitter

### Lenses

The simplest configuration of infinite wide-field microscope requires an excitation

### Excitation

### Emission

### Emitted Light Collection and Image Formation (emission/collection)

-   Lens selection
    -   objectives
    -   SLR
        -   spectral coating characteristics \#\#\# Mechanics

### Microscopy and Functional Imaging Two core innovations in available

-   technology 1. Synthetic bio (i.e. GCaMP) 2. Cameras
-   scientific CMOS

## Brain Imaging Awake Animals

## Brain Regions

-hippocampus, cortex, striatum - cell types - cell sparsity

## Analysis
# # ## Cameras for Widefield Microscopy

Traditional widefield microscope or macroscope builds incorporate 'scientific grade' cameras. Compared to cameras built for other markets (e.g. consumer, industrial, studio, etc.), these cameras are often well tested and certified to offer low or well-characterised noise at moderate speeds, and a linear photo-response profile. Unlike consumer or studio cameras which are invaribaly configured for RGB color, they are preferably configured with 'monochrome' sensors - essentially identical to the analagous color sensor, without the bayer filter. Of much greater importance, one must consider the unique connectivity and control interface that scientific cameras come with. Standards exist, but are typically unique to this segment of the industry, with poorly defined specifications for translation to other electronic communication and connection interface standards, such as those used in studio and broadcast video, or those used with consumer cameras. The trait that is the most worthy of consideration, however, is the cost. See @discussion-cost-consumer for details.

The in-vivo instrinsic-signal or fluorescent-dye imaging camera of 1 decade ago had a 0.5"-1" monochrome CCD sensor with 0.1-1 MegaPixels, a large well-depth, and moderately low noise at speeds around 30 to 60 fps. Connection was often LVDS, with custom electrial connectors unique to each camera. A particularly popular and long-running model was the Dalsa 1M30, followed by the 1M60 in later years [@takahashi_vivo_2006].

### Accelerated Sensor improvement


#### Sensor Size



#### Read noise and Speed


#### Interfaces: Connection

#### Interfaces: Protocol






***
## Computer Workstation

Go to [Puget Systems](http://www.pugetsystems.com) to find a computer configuration that is well tested and uses commercially available components to deliver high performance. If you don't feel like putting a computer together yourself, you could order directly from them.

### Part Selection and Assembly


Motherboard: | Processing | Expansion Slots: | Memory: | Connections
------------|----------------|-------|--------|
ASUS WS C621E SAGE | Socket: 3647 | | |

<!-- CPU: Purley
Form Factor: SSI EEB
Chipset: Intel C620 -->
<!--
12 slots DDR4 ECC Registered 2666 MHz
(Max per Slot: 64 GB)
Max Supported: 768 GB


Rear USB 2.0: 2
Rear USB 3.0: 4
 -->

### Configuration
Must configure bios to optimize for high-throughput writes to disk.

### Package Managment
- Package Management & Binary Distribution Sites
- Bintools/JFrog
- Conan.io
- NPM
- Nuget
- VCPkg
- Chocolatey (win)
- Apt/yum (linux)
- Pacman (msys/mingw)
- Pact (babun/cygwin)
- scoop
- NPackd
- Pypi

### Development Environment
- Version-Control
    - Github
    - Bitbucket
    - Gitlab
    - Sourceforge
    -
    - [Comparison on Wikipedia](https://en.wikipedia.org/wiki/Comparison_of_source_code_hosting_facilities)
- Code Repositories
    - Matlab File Exchange
    - stack overflow
    - ~~(Google Code)[code.google.com]~~
- Research Entity Web Sites
    - From Laboratory Manifest
        - Janelia
        - INRIA
        - Schartz Center for Computational Neuroscience (SCCN)
            - (SCCN Homepage)[https://sccn.ucsd.edu/wiki/SCCN_Software]
            - (SCCN Github)[https://github.com/sccn]
            - EEGLAB, BCILAB,Lab-Streaming-Layer
        - Cohen Lab
            - LeverJS
    - NIH
    - NASA
- Binary Utilities
    - gtools
    - exetools
    - nirsoft
    - sysinternals
    - unxutils
    - x64tools
    - BU EngIT (butools)
- OSS Foundations
    - Apache
- Citations in Literature
    - from Biblio-Manifest
- SCC or Grid Utilities
## Head-Fixation Apparatus for Mice

Whether using a microscope or electrophysiology apparatus with the spherical treadmill, the requirements for a rigid connection to the animal's cranium are critical.

![VR headplate holder in progress](img/VR_headplate_holder_in_progress.png)
![VR headplate holder in progress3](img/VR_headplate_holder_in_progress3.png)
![VR headplate holder in progress4](img/VR_headplate_holder_in_progress4.png)
![head-fixed-mouse-stationary-front](img/head-fixed-mouse-stationary-front.jpg)
![head-fixed-mouse-stationary-side](img/head-fixed-mouse-stationary-side.jpg)
![headplate_holder_VR_v2](img/headplate_holder_VR_v2.PDF)
# Microscopy 2

## Construction

### Standards

## Multispectral Imaging

### Filter Selection

### Lenses

### Mechanics and Positioning

-   Configuration
    -   gantry
    -   XY table with split Z
    -   AB axial rotation mounts
        -   center of rotation bi-coaxial with image plan
-   Bearings
    -   ball bearing slides vs crossed roller
    -   flexures
    -   air bearings
        -   hybrid vacuum and compressed air
        -   magnet and compressed air
    -   simple teflon slip

## Electronics

### Photosensors

## Cameras

This section details the evolution of cameras sensors and other sensors that provide bio-relevant data. Emphasis is on

### Scientific CMOS (sCMOS)

-   Correlated double sampling
-   HDR
-   On-sensor Fusion
-   Commercial availability

### Data-Transfer (Camera Interfaces)

-   USB
-   CameraLink
-   COaXPress
-   PCIe
    -   gen2, gen3
    -   x4, x8
    -   copper, fiber

## Image Acquisition

-   Libraries
-   Camera configuration
-   Windows vs. Linux
-   Setup and programming <!-- matrix vision has an amazing manual -->

## Image Data Management

-   Storage format
-   storage location
-   provenance
## Sensors


Development boards
## 3D-Printing for end-use part fabrication

Processes include

- Fused deposition
- extrusion
- Polymer ...
- Direct Metal Laser Sintering (DMLS) or Select Laser Melting (SLM)
- Multi-Jet-Fusion (MJF)

### Material comparison [@i-materialise]

| ---                             | Titanium                     | Stainless Steel ("high-detail")           | Stainless Steel (standard) | Aluminum                  |
| ------------------------------- | ---------------------------- | ----------------------------------------- | -------------------------- | ------------------------- |
| Process                         | DMLS                         | MJF, oven sintering                       | SLM                        | DMLS + heat-treatment     |
| Minimum Wall Thickness (mm)     | 0.5 - 1                      | 0.3                                       | 0.5                        | 1                         |
| Minimum Details (mm)            | 0.25                         | 0.1                                       | 0.5                        | 0.25                      |
| Accuracy                        | ±0.2% (lower limit ±200µ)    | N/A                                       | ±0.2% (lower limit ±200µ)  | ±0.2% (lower limit ±200µ) |
| Maximum Size (mm)               | 220 x 220 x 250              | 45 x 45 x 45                              | 440 x 220 x 320            | 440 x 220 x 320           |
| Clearance                       | N/A                          | N/A                                       | N/A                        | N/A                       |
| Interlocking or Enclosed Parts? | No                           | no                                        | no                         | no                        |
| Pricing model                   | volume, box, surface, finish | 3D extent (i.e. imaginary box LxWxH=mm^3) | no                         | volume, box, surface      |

: Direct Metal Laser Sintering (DMLS)
[#i-materialise]:[i.materialise](https://i.materialise.com/en/3d-printing-materials)
# Figures

## Figure 1 Design, assembly and installation of the polymeric optical window. 

\(a) Schematic of the window system assembled and installed to the animal. Cross section shows the placement of the window as the bottom plane contacts the brain as it extends below the surface of the skull. Side view shows the adjustable height between the window and the headplate to compensate the cavity from skull removal. (b) Top and side view of the polymer window and the headplate. The window frame and the headplate are made of aluminum, and the window is molded in PDMS. Exploded view shows how the two pieces can be assembled. Front side of the headplate includes a feature that avoids hitting the eyes of the animal. (c) Top and (d) side view of the parts. (f) Parts assembled and installed to the animal.

## Figure 2 Flexible experimental timeline for surgery, injection and imaging. 

Two-part assembly allows flexible timeline to separate the procedure of headplate installation and craniotomy from injection which helps with optical clarity during the early period imaging. On Day -2 which can extend upto Day -7, headplate installation and craniotomy is performed. Step 1 shows the placement of the headplate above the intended craniotomy region (before) and the fixation to the skull using opaque Metabond (after). After at least 48 hours of recovery period, injection and window installation is performed on Day 0. Step 3 shows injection using a micropipette filled with Evans Blue dye for demonstration only. Step 4 shows window installed above headplate using dental cement. Any cavity between the two pieces are filled with sterile 0.5% agarose. Lastly, imaging session can start from Day 4. Step 5 shows a mouse freely running on a treadmill during a imaging session while its head movement is restrained. The microscope is installed above the animal. Step 6 shows after window removal (before) that allows full tissue access, and a new window installed (after) that allows continuation of imaging over the same region.

## Figure 3 Extended optical clarity by biocompatible design of the system. 

\(a) The space between the window and the skull filled with agarose is progressively replaced by granulation tissue over time. At 6 month, granulation tissue surrounds the polymer window and vasculature formation is visible resembling a wound healing process. By 1 year, the intermediate space is filled with tissue embedded with vasculatures. The figures are from different animal that represent the corresponding time-point from the initially window installation - the window was installed using opaque Metabond on the samples for Day 0 and 1 year and semi-clear Metabond on the sample for 6 month. (b) Snapshots with the field-of-view of 1.3 x 1.3 mm were taken over the same regions on both hemispheres using the major blood vessels as landmarks (circled same regions). The optical clarity maintains over time to detect cellular dynamics of individual cells. Some GCaMP6f labeled cells are visible. In the left hemisphere, vascular remodelings are notable during the early period.
# Introduction

In vivo optical imaging provides a means to visualize the structural features and functional dynamics of brain tissue, and to measure how these change over time^1--3^.
Optical techniques for observing neural activity have advanced due to evolving digital imaging technology, and the development of increasingly effective functional indicators such as the genetically encoded fluorescent calcium sensor GCaMP6f^4^.

The ability to observe and record from the same brain region for extended periods is critical for longitudinal experiments tracking long term changes^5--8^.
This ability relies heavily on maintaining a clear optical light path by forming a stable non-scattering interface with neural tissue overlying the targeted brain region.
Using a wide-field fluorescence microscope with a scientific-CMOS camera, we can record activity in hundreds of distinct neurons in the hippocampus and other subcortical brain regions of awake behaving mice^9^.
The method used to create an optical window in subsurface regions allows the quality of optical access to remain stable for several months.
The approach is not without drawbacks, however; stable optical access is delayed by pooling and coagulation of blood on the window surface resulting from unavoidable vascular damage inherent to the implantation procedure^5^.
The period of delay post implantation can range from 3-8 weeks before tissue repair and phagocytic debris removal processes subside to yield optical access to targeted brain tissue with stable imaging quality.

Attempts to image neocortical regions on the surface of mouse brain typically use a small glass disc fixed to the cranial surface to seal and protect the craniotomy, and to provide optical access to the brain^10,11^.
This approach, however, is often challenged by progressive deterioration in image quality.
Consequently, the reliability and average duration of optical access has been insufficient for long-term studies.
The degradation is observed as a cloudy layer that gradually covers the imaging field, and is thought to arise from the natural inflammatory response that follows a craniotomy^10--15^.
As granulation tissue grows, its inhomogeneous structure scatters light at the interface between brain tissue and optical window, which consequently degrades image quality and blurs fluorescence signals.
Image quality in wide-field microscopy is more sensitive to scattering along the light path than scanning microscopes like two-photon or confocal, and is therefore particularly susceptible to this degradation^1,16^.

While glass is c­­hemically inert and comes in many shapes and sizes, cementing glass to the top of the skull leaves a fluid filled gap between the window and brain surface which is quickly filled by granulation tissue.
This process, thought to be a mechanism for dura and bone regrowth, eventually disrupts the high optical clarity for chronic imaging^12^, and hence is a common target for efforts to extend image quality through a cranial window^7,12^.

Efforts to overcome this problem by adding purely mechanical features to the cranial window have involved attaching spacers made of agarose^11,17^, silicone^18,19^ and glass^7^ to the window's brain-facing surface that compensate for the thickness of removed bone.
These approaches report delaying tissue regrowth for up to a few months before optical quality deteriorates.
These modest results indicate a valid basis underlying this approach and suggest that extending this strategy by starting with a design and material not limited by the fixed form of flat glass optical windows could yield some improvement.
Additional elements of a chronic cranial imaging window intended to mitigate degradation by granulation tissue typically target the primary source stimulating the process, inflammation.
These include the aseptic design of seals and features, selective use of biocompatible materials, and perioperative administration of anti-inflammatory and antibiotic drugs^7,20,21^.

While these designs have improved longevity, they remain limited in terms of long-term access to the cortical tissue.
The ability to access and manipulate tissue during real-time imaging facilitates novel ability to characterize the dynamic processes in both physiological and pathological conditions^22^.
Several strategies have been reported to gain access to regions below glass cranial windows by incorporating features such as an access port sealed with elastomer^23^, infusion cannula^24^, or the use of microfluidic channels^17^.
Nonetheless, the approaches limit the tissue accessibility to a single designated site predetermined before an experiment begins and do not offer uniform access over the imaging area.

To address the relative restrictions using glass as cranial windows, a number of alternative efforts have highlighted the use of silicone elastomer for cranial windows^25--29^.
For example, polydimethylsiloxane (PDMS) is optically clear, non-toxic and chemically inert and can be molded to take any shape or exhibit any desired feature, not necessarily sacrificing the imaging field of the window.
These properties combine to offer a remarkably versatile material, particularly favorable for prototype development for projects with demanding specifications for biocompatibility and optical performance.
A well-known and widely used example is the artificial dura for in vivo optical imaging in nonhuman primates^25,26,30^.
This chronic implant device is placed in and covers a craniotomy and sits protected within a chronic cranial recording chamber.
It mitigates tissue regrowth, and interfaces with a cylindrical insert -- also made of PDMS -- for optical imaging of neocortex.
Additionally, the artificial dura is thin enough to enable access to underlying tissue for penetrating electrodes, which penetrate easily and leave a tight seal after withdrawal.
Yet the efforts for translating this design windows for small research animals using silicone elastomer have thus far been limited.
And a system with long-lasting high optical clarity and flexible tissue accessibility remains to be developed or explored for rodent models.

In this paper, we describe a design and demonstrate a cast silicone chronic cranial imaging window system, developed to facilitate longitudinal imaging experiments in mouse neocortex.
The primary capability requirements for this design are:

1. Long-term stability of an optically clear light-path to cortical surface
2. Intermittent physical access the to imaged region at any point in study

The system was designed considering biocompatibility and optical performance to facilitate integration in place of the removed bone flap enabling us to achieve sustained periods of optical clarity, extending beyond a year in some mice and allowing for both high spatial and temporal resolution using a wide-field microscope.
Additionally, the two-part system consisting of a fixed headplate with integrated neural access chamber and optical insert, allowed flexible access to the underlying tissue.
The utility of our design is demonstrated through chronic optical imaging of calcium dynamics in the cortex and acute interventions to the tissue upon detachment and replacement of the window from the headplate.
Adaptation

# Results

Here we report the design for a head-fixation and cranial window device, and the procedures for surgical attachment.
The sections below describe the features of each component, and also report the critical elements that contribute to the performance and capabilities of our optical imaging window system.
The following sections provide a detailed report of the system performance observed during evaluation.
<!-- TODO: adaptation -->

## Cranial Window System

Many design features, and procedures for implantation were introduced and developed to mitigate tissue growth for the sustained optical quality of the window.
Other features were included to enhance imaging performance in awake behaving animals, to facilitate repeatable localization of image fields across sessions and animal subjects.

The cranial implant system is composed of two parts: a headplate with an integrated chamber, and a silicone optical insert.
The headplate is bonded to the dorsal surface of the animal's bare skull.
The optical insert -- sometimes referred to as a "cranial window" -- seals the chamber and establishes an optical interface with the animal's brain through craniotomy sites in the chamber floor (Fig 1a).

### Headplate

The bottom surface of the headplate is curved to conform to the dorsal skull surface of a typical mouse.
This feature aids alignment during installation, and a large surface area enables a strong adhesive bond to the skull surface.
Adhesive cement is applied continuously along all points of contact to create a permanent bond along the entire perimeter.
The cement applied along this joint effectively seals the bottom of the aseptic chamber and is critical for its long-term integrity.

The wide area of skull-to-headplate attachment provides a mechanically stable coupling between the animal's skull and the headplate holder, which is fixed to the microscope table.
The headplate is bonded to all skull plates, which stiffens the skull tremendously.
Additional rigidity is provided by a central support structure that contacts the skull along the sagittal suture.
All these features combine to provide a very rigid attachment to the mouse cranium, which drastically reduces its motion relative to the imaging system (Fig 1b).
Remaining brain motion is then primarily movement relative to the skull, and may originate from physiological forces (i.e. cardiorespiratory) as much as behavioral forces from animal movement; suppressing this intracranial motion is addressed in the design of the silicone window insert described below.

### Chamber

The chamber in the headplate center facilitates physical access to neural tissue by protecting the craniotomy sites between interventions.
Once the headplate is bonded to the animal's skull, the floor of the chamber is formed by the central support structure that traverses and fuses the sagittal suture, the skull surface surrounding each craniotomy, and a flat ledge that extends laterally.
The joints between the skull surface edges of the central support, anterior and posterior walls, and the lateral ledge are sealed during the headplate attachment procedure.
This bottom seal is crucial for maintaining an aseptic environment for the protection of the exposed brain tissue.
When the dura mater is left intact during the craniotomy, the space within the chamber is continuous with the epidural space.

### Optical Insert

The insert has optically flat top and bottom rectangular surfaces.
The bottom brain-facing surfaces are positioned to form a flat interface with the intact dura through each craniotomy.
The body of the insert provides a clear light-path between top and bottom surfaces.
The walls of the body are tapered to increase the angle of unimpeded light collection/delivery at the image field.
This increases the numerical aperture for imaging through high power lenses, and also expands options for off-axis illumination.
The tapered body is extended to the brain surface via vertical-walled columns that traverse each craniotomy.
These columns fill the space made by removal of the bone flap during craniotomy, and their bottom surface gently flattens the brain tissue, positioning the cortex in a horizontal plane for convenient wide-field imaging.
Both the top and bottom surfaces are made optically clear by integrating microscope slides in the mold when casting.
The dimensions of the insert are depicted in figure 1-b.

Inserts are fabricated in batches using an optically transparent silicone elastomer.
We vacuum cast the part in a PTFE and glass mold with an aluminum frame inclusion that gets embedded near the upper surface.
This frame provides a site for attachment and sealing to the rim of the chamber, as well as structural reinforcement.
This helps to establish and maintain a flat optical surface at the top of the insert, parallel to the headplate (Fig 1b).
We constructed inserts with the bottom optical surface parallel to the top, which works well for imaging medial cortical regions.
For imaging lateral cortical regions (e.g. visual or auditory cortex) the mold can be adapted to produce inserts that form a flat image plane with consistent controllable angle relative to the headplate.
For any desired angle, this capability greatly simplifies recording from a consistent image plane across sessions and animals.
The medial cortical region imaged in the demonstration provided here was square in shape (2 mm X 2 mm), at a horizontal angle of 0 degrees, and extended from 0.83 mm to 2.83 mm symmetrically off the midline (Fig 1a).

## Installation and Usage

The surgical installation procedures for this multi-stage implant device were adapted from a combination of procedures in common use for attachment of headplates and cranial windows in mice, and similar devices used for optical imaging in primates.
The specific protocol evolved during 3 distinct trial runs, and the final protocol is summarized here and detailed in methods and materials below.
The 18 mice reported here received the same version of headplate and optical insert.
These mice were used for simultaneous development of other projects not described here.
Minor changes were made to the surgical procedures from one batch to the next, each with discernable effect; see the discussion for details.

Because this is a multi-stage implant, the procedure for installation can be separated into multiple distinct surgeries depending on experimental requirements.
The first stage includes headplate attachment to bare skull, centrally aligned along the AP axis with the bilateral sites over the cortical region of interest.
Once the headplate is securely bonded, bilateral craniotomy can be made through the skull in the base of the chamber.
If the second stage of installation is performed separately, the chamber is given a temporary silicone seal to protect the craniotomy.
We delayed the second stage of installation for at least 2 to 3 days to allow for mouse recovery.

The second stage involves installation of the optical window, and may be directly preceded by injection of virus, pharmaceutical compounds, exogenous cells, or any other substance of interest.
The optical window is installed in the chamber with the assistance of a stereotaxic holder, which enables fine height adjustment and holds the window's position while being secured in place.
The angle of the window's top surface is held parallel with that of the headplate.
The chamber is partially filled with sterile agarose to displace all air from the chamber when the optical insert is lowered into place.
The height is adjusted to provide full contact between the insert's bottom surface and the dura, which also places the insert's frame in close proximity to the rim of the chamber.
Dental cement is applied to form a joint between the headplate and the frame of the optical insert, fixing the insert in place and aseptically sealing the chamber.

The optical insert can be detached and reattached at any time to provide physical access to the neural tissue and/or for window replacement (i.e. for mid-experiment injections or window damage repair respectively).
Detachment is relatively easy, accomplished by etching away the joint between headplate and optical insert.
Window replacement uses the same procedure as the second-stage installation described above.

The replacement procedure was attempted 5 times, 4 of which were successful in preserving or restoring optical quality to "like-new" condition, without inflicting detectable tissue damage.
Three windows were removed and replaced following damage to the top surface of the optical insert, inflicted by feisty cage-mates with sharp incisors (at 91, 83, and 172 days post-installation; 91 days case unsuccessful).
The remaining two cranial windows were removed at 20 days post-installation to facilitate direct tissue access for a study requiring cellular graft to the imaged region.
We found that the removal needs to be performed slowly, taking great care to avoid capillary rupture in the exposed brain and surrounding granulation tissue.
During each of these procedures, we observed the pattern of granulation tissue growth into the peripheral area of the chambers.
Photos of the typical growth (as observable with window removed) at day 172 is shown in figure 3-d, and described in more detail below.

## Evaluation of System Performance

Throughout development we implanted several prototypes to test the effect of various features and conditions.
The cranial window design and surgical procedures described in this paper were attempted with 18 mice.
Cranial window condition was evaluated by direct observation and evaluation of fluorescence dynamics in processed video recorded during periodic 5-minute imaging sessions.
Direct (bright-field) observation with a stereoscopic microscope was useful for evaluating quality of the optical interface with brain tissue, as well as for tracking progression of granulation tissue growth in the surrounding space at the edges of the craniotomy.
Analysis of cell dynamics measures from processed fluorescence imaging video indicated actual usability of the window for longitudinal studies requiring activity metrics at a cellular level.

### Experimental Batches

The first batch served as a short trial-run for the prototype and procedures whose performance in early tests suggested strong potential for long-term reliability.
We ran the first batch for 4-6 weeks to get a better assessment of what we could expect for long-term viability.
With this design and minor modifications to the surgical procedure, we felt comfortable using the window in studies with long-term requirements that would also allow for continuous assessment of the window's performance in parallel.
The first batch of windows was installed in April-May 2017 (N = 7) and was evaluated 2-3 times/week for just over 1 month.
Several more were implanted for use in a long-term imaging study beginning with a second batch in June 2017 (N = 6), and a third in October 2017 (N = 5).
The results of these runs are reported below, summarized in figure 3-b.

### Sustained Optical Quality Extended over a Year

In the first batch of 7 mice, image quality provided by the window was more than sufficient to record cell dynamics across both image regions beginning 4 days after the window-installation and fluorophore-transfection procedure and was sustained for several weeks.
At 4-6 weeks post-implant this batch of mice was evaluated and 6 of the 7 mice were discontinued and the installation procedure was adjusted for the next batch.
The decision to discontinue in each case was based on observed deterioration in either the health of the mouse (4 out of the 6) or the optical quality of the window (2 out of the 6).
See the discussion section for the mechanisms we suspected to underlay and procedural adjustments made to address these issues.

We continued to observe and image the 7th mouse to this day.
Progression of the optical quality and fluorophore expression characteristics in bilateral image regions is depicted in figure 4 for this mouse.
Optical quality at the window-tissue interface has remained consistent for longer than 18 months at the time of this manuscript's preparation.
The structure of granulation tissue surrounding the window at 12 months is described in detail below and depicted for this mouse in figure 3-d.

Similar to the first batch, the second batch of 6 mice was observed and recorded for some time (3 -- 5 months) before discontinuing all except one most exceptional mouse.
This mouse received a window replacement at day 83, and was imaged periodically for 11 months before terminating due to a health concern unrelated to the surgical procedure.

The imaging period for the last batch was extended beyond what was required for the stem-cell study to more thoroughly test the longer-term limits of sustained optical quality.
Of 5 mice, 1 mouse did not recover as promptly as expected following the craniotomy procedure and was immediately discontinued.
We observed consistent performance on long-term optical sustainability, extending over 12 months on average among the 8 windows.
Half of these windows remain to be imaged to this day, and the rest were discontinued either followed by capillary rupture within image field or the deterioration of the health of the aged animals.

Figure 3-a presents transfected cells surrounding the initial virus injection site that can be identified throughout the field-of view of 1.3 mm x 1.3 mm.
In this data set, estimates of cell number ranged from XX to XX with a relatively small variation among few randomly selected days between XX and XX.
<!-- TODO: replace XX for figure 3 -->

### Direct Observation of Cranial Chamber

We periodically examined the imaging chamber condition in all implanted mice using a stereoscopic microscope.
Degradation of the optical interface was found frequently in prototypes/procedures that preceded the one mentioned here.
This was observed as progressive extension of a cloudy white inhomogeneous layer across the brain-facing surface of the optical insert.
Using the design and procedures reported in this paper, this type of degradation rarely occurred, limited to the cases reported above in Batch 1.

Remarkably, but not unexpectedly, tissue growth surrounding the insert was evident in all cases, regardless of window clarity.
The tissue appeared highly vascularized, and grew from the craniotomy edge outward along the chamber floor (figure 3-c).
This growth is a natural response to the tissue damage inflicted by any craniotomy procedure.
The difference observed here is only that the growth does not extend under the window.
Instead, it forms a non-adhesive interface with the vertical walls of the transcranial columns and diverges upward into the aseptic chamber, replacing the agarose filling between the optical insert and the adhesive cement covering the skull and chamber floor.
To further investigate the structure of granulation tissue growth into the peripheral chamber areas we detached the optical insert for unobstructed observation in several mice.
An especially gnarly example from a 6-month duration window is pictured in figure 3-d.

### In vivo Tracking of Transplanted Stem Cells over Long Term

The ability to separate the installation procedure into Stage 1 and 2 was critical to capture the integration process of transplanted stem cells from day 4 and day 563 (figure 4).
In addition to window installation, the experiment entails dissection of progenitor cells from E13.5 mouse embryos prior to transplantation which sequences require to be carried out in a timely manner.
Tailored to this specific application, we performed Stage 1 of the installation procedure two days in advance, allowing time for tissue dissection immediately before conducting Stage 2 on day 0 (figure 4-b).

Figure 4-a shows one of the exceptional mice transplanted with two distinct cellular sources of glutamatergic and GABAergic neurons in left and right hemispheres, respectively.
The optical interface of the cranial window sustained to

## Adaptability

We also report here an adaptation of the more thoroughly-tested headplate and cranial window design described above.
The most obvious difference in the newer design is a substantially larger window, which provides optical access to the entire dorsal cortex.
Additional features were added to aid window positioning, improve sealing performance, and to simplify fabrication.
Adding the additional design features was made possible by switching the headplate fabrication process from CNC machining to 3D printing, as discussed below.
Following is a summary of the major changes incorporated in the latest configuration, included here to demonstrate the adaptability of the basic design described above.

The height and width of the window frame and chamber were increased, and the window thickness decreased.
Protrusions were added to the bottom surface of the headplate which follow the lateral edges of the chamber.
These protrusions contact the mouse cranium along the squamosal suture to maintain a rigid skull-to-headplate attachment despite a reduction in attachment area and removal of a larger fraction of parietal and frontal bone.
A thin skirt was added to the bottom surface of the optical insert along its perimeter to help block tissue growth across the imaging area.
This is analagous to the vertical column of the prior design, which compensated for the skull thickness, but it accomodates the irregular curves of the endocranium surrounding the larger window.
Window attachment and height adjustment are improved by fixing small nuts into the headplate on either side of the chamber, and using fine-threaded screws to fasten the optical insert in place.
This method of window attachment provides a vast improvement over the dental cement method used with the prior design and facilitates fine adjustments to the window height.
A thin coat of silicone was added to the chamber's inner walls prior to attachment to help seal the upper rim of the chamber with the outer edge of the optical insert.
The tape that was used previously to protect the top surface of the implant was replaced with a solid flat magnetically-coupled cap.

# Discussion

The two-stage cranial implant device described here was developed to enable reliable long-term optical access and intermittent physical access to mouse neocortex.
Our particular application required bilateral cortical windows compatible with wide-field imaging through a fluorescence microscope, and physical access to the underlying tissue for virus-mediated gene delivery and injection of exogenous labeled cells.
Optical access was required as soon as possible post-installation, and to be sustained for several months.
The design focused on addressing the issue common to other window designs meant for rodents: progressive degradation of the optical light-path at the brain-to-window interface caused by highly scattering tissue growth.
The elastomer insert is molded to fit the chamber and craniotomy, blocking tissue growth and providing a reliable optical interface for up to one year.
Additionally, the core design can be rapidly adapted to improve performance or for varying applications.

## Critical Elements

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

## Staging Implant Installation & Tissue Access

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


## Design Adaptation

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

## Further improvements

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

## Conclusion

- additionally, we prove the system can be easily adaptable for different applications
- the develop of such device will eliminate the physical barrier we have to probe the complexity of the brain -- capability to facilitate longitudinal optical imaging experiment in mice
- we used silicone elastomer to develop the window which provides versatility to add functions:
[versatility of silicone elastomer]("http://npi-med.com/news/top-5-reasons-consider-sil>i>cone-molding-medical-device-project/")

# Materials and Methods

## Device development and fabrication

Components were designed using SolidWorks.
Prototypes were fabricated using CamBam to generate toolpaths in G-code for machining on a CNC mill.
The headplate and window frame were milled from aluminum plate.
The mold for casting PDMS-based windows was designed in three parts.
The middle component was milled from PTFE.
The outer components were made using a laser-cutter and acrylic sheet (Supplementary).
CAD files are shared on XXXXX(github?)XXXXX.

## Window casting procedure

The PDMS-based windows were fabricated through vacuum casting procedure.
Prior to casting, window frames and two glass coverslips (Corning, 2947-75x38), prepared in advance through plasma etching (30 sec, Power setting) and silanization using Trichlorosilane (Sigma-Aldrich, 448931-10G), were inserted into the mold.
The mold was then placed between two custom-made acrylic plates with silicone gaskets in between and was assembled using bolts around the perimeter.
The pressure control port (McMaster-Carr, 5454K61) was connected to the house vacuum line, and the fill port (McMaster-Carr, 2844K11) was connected to uncured PDMS polymer (Dow Corning Sylgard 184) (1:10 by weight), thoroughly mixed and degassed in advance.
The liquid-state polymer was then drawn into the mold filling the volume in between the two coverslips using vacuum.
Once polymer displaced all air, vacuum was released and positive pressure was applied through the pressure control port after plugging the fill port.
While maintaining positive pressure, the polymer was cured at 75ºC for 12 hours.
Finally, the windows were released from the mold and trimmed using scalpels.
Windows were handled so as to protect the top and bottom surfaces from damage or debris.
The completed window was sterilized in an autoclave before use.

## Surgical procedures

Animal care for surgical procedures is described below, and the details specific to each procedure are in the sections that follow.
All procedures were approved by the Institutional Animal Care and Use at Boston University.
Stereotaxic surgeries were performed on 6 to 8 weeks old female C57BL/6 mice (Charles River Laboratories).
Pre-operative care for the initial headplate and craniotomy procedure included subcutaneous administration of meloxicam (NSAID, 2.5 ug/g) and buprenorphine (opioid analgesics, 0.3 ug/g), and intramuscular injection of dexamethasone (corticosteroid, 5 ug/g) one hour before surgery.
Meloxicam and buprenorphine were continued postoperatively every 12 hours for 48 hours.
Meloxicam was also given before and after procedures where brain tissue was exposed, i.e. those for intracerebral injection and window replacement.
For all procedures described below, mice were placed under general anesthesia with isoflurane mixed with oxygen.

## Headplate installation and craniotomy

We shaved the top of the mouse's head and sterilized the skin using 70% alcohol and 7.5% Betadine.
We made a 1cm midline sagittal incision through the scalp using surgical scissors, and retracted laterally using a self-retaining retractor (WPI, 501968).
To prepare the cranial surface, we applied 3% hydrogen peroxide to oxidize and facilitate removal of periosteal tissue with cotton tip swabs.
The surface was then marked up before headplate installation followed by craniotomy.
We targeted laterally symmetric craniotomies with edge length 2.2 mm centered at coordinates ±1.83 mm lateral to sagittal suture and 1.00 mm anterior to bregma.
First, we used a surgical skin marker (FST, 18000-30) to roughly indicate the site of each craniotomy and enhance contrast of the edges to be etched.
We etched the corners and edges using a dental drill with a FG 1/4 round carbide burr (Fig.
2 Step 1(L)).
This way of marking the edges facilitates headplate placement and also aids recovery of the intended craniotomy position despite being covered by semi-transparent adhesive cement in the following steps.

We used a custom stereotaxic attachment (Supplementary) to position the headplate symmetrically aligned with the marked sites, and to hold it horizontal while bonding to skull.
The headplate was anchored directly to the skull using either opaque or semi-clear quick adhesive cement (Parkell, S380).
Subsequently, we began each craniotomy by drilling along the marked edges (Fig.
2 Step 2(L)).
We frequently stopped to flush debris from the site using sterile saline and an aspirator.
Once separated from the surrounding skull, the bone flap was carefully removed using a pair of sharp forceps (FST, 91150-20) and a 45º micro probe (FST, 10066-15) while keeping the dura intact (Fig.
2 Step 1(R)).
At this point, we either attached the optical window or sealed the area with a layer of non-toxic silicone adhesive (WPI, KWIK-SIL).

## Optical insert attachment

The optical insert attachment can be performed immediately following the craniotomy or deferred to the day of injection as described below (Fig.
2 Step 4).
First, we filled the headplate chamber with sterile 0.5% agarose solution, immersing the exposed brain.
Enough agarose was added so as to overflow the walls of the chamber as the window is inserted, ensuring no air gaps remain in the space between the walls of the chamber and the window, below the joint to be sealed.
Next, the window was placed in the chamber, directly over the craniotomy, in gentle contact with the exposed tissue.
We used a ttaxic apparatus to adjust the window height and secure its position during attachment.
This was aided by an attachment -- similar to that used for headplate installation -- which fixed the angle of the window's top surface parallel with that of the headplate.
The height adjustment required depressing the window until full contact was observed between the inner window surface and the dura.
The window was tacked in place by applying an accelerated light-cured composite (Pentron Clinic, Flow-It ALC) in at least three points, bonding the window frame to the anterior and posterior walls of the headplate.
At this point the guide was removed and the joint was prepped for sealing.
Excess agarose (polymerized overflow from the window insertion step) was aspirated away to expose and clean the headplate surface surrounding the window.
The chamber was sealed by filling the joint between headplate and optical insert with dental cement (Stoelting, 51458) using a P200 pipette.
The window surface was protected by applying a double layer adhesive strip made of gaffers tape over a transparent adhesive film dressing (3M: Tegaderm, 70200749201).

## Window detachment and replacement

The dental cement connecting the window and headplate was etched away using a dental drill.
Before removing the window, we thoroughly flushed debris from the surrounding surfaces with sterile saline.
Replacement windows were installed using the same procedures described above for initial attachment.
Localizing the replacement window to the same position was aided by the expansion of granulation tissue up to the walls of the prior window.

## Injection

The exposed brain was flushed with sterile saline before and after each injection.
Injections were made using pulled glass micropipettes with inner tip diameter ranging from 40 and 80 um (WPI, 504949).
The micropipette was initially back-filled with mineral oil, then secured onto a microprocessor controlled injector (WPI, NANOLITER2010).
The micropipette was then front-loaded with virus or cells using a controller (WPI, Sys-Micro4).
In general, an injection of 230 nL of cells labeled with AAV9.CAG.GCaMP6f (AV-9-PV3081, Penn Vector Core) at 10^6^ cells/uL, or 230 nL of AAV9.Syn.GCaMP6f (AV-9-PV2822, Penn Vector Core).
Injection was performed approximately 500 um deep into the cortex at the rate of 46 nL/min near the center of the imaging field, while avoiding blood vessels to maximize the observable cells around the injection site (Fig.
2 Step 3).
The micropipette was left to sit for an additional 2 min at the injection site before slow withdrawal.

## Wide-field in vivo imaging and microscope setup

Wide-field epifluorescence imaging was accomplished using a custom microscope equipped with a sCMOS camera (Hamamatsu, ORCA Flash 4.0XX), 470 nm LED (Thorlabs, M470L3), excitation and emission filters of XX and XX, a dichroic mirror (XX), and a 10x objective lens (Mitutoyo, 378-803-3).
Mice were positioned under the microscope for imaging using a custom headplate holder (Supplementary) and allowed to run on an air-supported spherical treadmill^18^ as pictured in Figure 2 Step 5.
The camera recorded a field-of-view of approximately 1.3 mm x 1.3 mm using an image resolution of 2048 x 2048 or more commonly 1024 x 1024.
Continuous image sequences were acquired at 40 to 60 frames-per-second for 5 to 7 minutes.
We selected the field to image within each site by roughly centering around the injection site.
To focus the microscope on labeled cells in the superficial layers of cortex, we focused on the surface vasculature to find a stable reference, then advanced the focal plane 50 to 150 um until multiple cells were distinguishable.
A reference image of the selected image was recorded for each site and used later to reacquire the same field across image sessions.
Alignment to this reference image relied primarily on using the major blood vessels as landmarks to guide microscope position in the XY plane.
Image sequences were stored for subsequent processing and analysis.

# Reference
