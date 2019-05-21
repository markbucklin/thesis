<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
f31

  - [Summary of Significance:](#summary-of-significance)
- [Aim 1 -- Develop an adaptable closed-loop stimulator:](#aim-1----develop-an-adaptable-closed-loop-stimulator)
  - [Electrophysiology](#electrophysiology)
- [Aim 2 -- Optimization of closed-loop stimulation pattern with machine-learning algorithms:](#aim-2----optimization-of-closed-loop-stimulation-pattern-with-machine-learning-algorithms)
- [Aim 3 -- Systematic evaluation of potential DBS targets and mechanisms in PD mouse model:](#aim-3----systematic-evaluation-of-potential-dbs-targets-and-mechanisms-in-pd-mouse-model)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### [Research Strategy]{.underline}

### Background & Significance

Deep Brain Stimulation (DBS) has been used clinically since the early 1990's, and is currently approved by the FDA for treatment of Parkinson's disease (PD) and essential tremor, with Humanitarian Device Exemptions for OCD and dystonia. In 1987 a French neurosurgeon observed during a thalamotomy procedure - where stimulation was applied for localization of ventralis intermedius - that high-frequency stimulation was able to suppress an extrapyramidal tremor (Benabid et al. 1987)(Liker et al. 2008). Subsequent studies in a non-human primate Parkinson's model suggested high-frequency stimulation (\~100-200 Hz) of the Subthalamic Nucleus (STN) was as effective as a lesion, in that it "jammed" neural activity at the tip of the electrode, yet it was tunable and reversible (Eusebio, Cagnan, and Brown 2012). Long term efficacy is around 50% using a standard clinical scale (UPDRS III)(Beuter and Modolo 2009); DBS can provide symptomatic improvement in tremor, rigidity, and bradykinesia, and can also facilitate a substantial reduction in levodopa dosage and consequent reduction in its major side-effects, i.e. dyskinesia (Eusebio, Cagnan, and Brown 2012). While DBS has substantially improved our ability to treat PD and other movement disorders, the therapeutic effect remains insufficient and unpredictable.

The mechanism by which DBS suppresses parkinsonian symptoms is still uncertain. However, there are growing evidence to suggest that increases in synchronized oscillatory activity in basal ganglia and thalamo-cortical circuits -- so-called *Beta-frequency* oscillations -- represents a pathologic and moreover *symptomatic* state in PD, the disruption of which is accomplished by high-frequency stimulation (Wilson and Netoff 2011). Meanwhile, synchronized activity in the beta range is also involved in many normal cognitive functions, and abnormal synchronization is likewise a mechanism for numerous other neurologic and psychiatric disorders (Velazquez 2012),(Andrews 2010). Consequently DBS has potential to become an effective treatment for epilepsy(II and Netoff 2013), OCD(Bourne, Eckhardt, and Sheth 2012), depression(Mayberg et al. 2005),(Malone Jr. et al. 2009),(Mayberg 2009), Alien Hand Syndrome and Tourette's(Krack et al. 2010), obesity(Taghva, Corrigan, and Rezai 2012), alcoholism(Heldmann et al. 2012), addiction(Luigjes et al. 2012), autism(Sturm et al. 2013), Alzheimer's disease(Laxton and Lozano 2012), and schizophrenia(White, Gilleen, and Shergill 2013),(Uhlhaas and Singer 2006). There are a large number of case-reports describing off-label DBS treatments, and a few small clinical trials(Kennedy et al. 2011; Sarem-Aslani and Mullett 2011). In 2009 Medtronic received a Humanitarian Device Exemption (HDE) to market a DBS device for OCD, called *Reclaim*("Reclaim^TM^ Deep Brain Stimulation for Obsessive Compulsive Disorder (OCD) Therapy - H050003" 2013). While closed-loop DBS might be even better suited for the complex dynamics of psychiatric disorders, most investigators have stuck with movement and seizure disorders(Sarem-Aslani and Mullett 2011), presumably feeling more comfortable with well-established animal models and FDA-approved applications; or perhaps feeling *less* comfortable with the ethical questions inherent to treating of behavior.

### Summary of Significance:

The novel closed-loop neuromodulation system as presented here has far reaching implications. These include improved patient symptoms, fewer surgical procedures ( for battery replacement) and broader application in terms of patient population and disease profiles. The increase in number and range of stimulation sites and rapid real-time response rate of the proposed mechanism would yield such results (Lozano and Lipsman 2013). Furthermore, the information on DBS mechanism gleamed from this study will have immediate effects on the current technology

### Shortcomings:

Any device that relies on optogenetics to deliver stimulation to neurons inherently shares the same hurdles to clinical translation, the requirement for gene-therapy and its associated risks. Several early trials of viral transfection of cells had adverse effects including a greatly increased risk of carcinoma. In these early studies, the DNA insertion location was uncontrolled leaving important regions of DNA tumor suppressor genes exposed to damage. New methods that improve the safety of gene therapy have been developed. Several of the more recent methods utilize adeno-associated virus (AAV) and show greater control regarding DNA insertion and decreased DNA damage. These more recent methods suggest a possibility that with continuing research, such a method may be developed without the potential for malignancy.

Working on a project that requires a technology that does not as of yet exist, represents one of the greatest educational benefits of this project. That leap of faith into a future that does not exist requires us to depend on each other as a team of collaborators, as each of our work depends on the others' success. In order to succeed, we must do so together; and without eachother, our therapeutics will never reach their ultimate goal, the patient. As such, we will share each success and setback in the same way whether such events occur within our own labs or labs across the country.

[**Research Design and Methods**]{.underline}

## Aim 1 -- Develop an adaptable closed-loop stimulator:

**Prior data:** The initial stages of this project have focused on aim 1 -- designing the physical components of the bi-directional neural interface -- and the peripheral aspects of aim 2 -- development of an automated behavioral assay for our prototypic animal model of Parkinson's disease.

### Neural Interface:

A *chronic neural implant* is required for this project, as the machine-learning component of this closed-loop system will require time and signal stability to function effectively. While our lab currently employs chronically implanted drivable tetrode arrays, this project will benefit from dropping this complexity in favor of *static* electrodes that are set to their prescribed position during the initial surgery, and never thereafter.

![](media/image1.png){width="2.0in" height="1.2013888888888888in"}**Electrodes: **

![](media/image2.png){width="2.0in" height="0.6486111111111111in"}Sustained penetration of brain tissue with large (\>15 microns) diameter electrodes provokes a chonic inflammatory reaction to the foreign body eventually encapsulates the electrode in a "glial scar" and inhibits regeneration of neural process in the vicinity (Polikov, Tresco, and Reichert 2005). The chronic implant described in **aim 1** will use silicon electrodes to record from deep brain targets, and for shallow targets will employ *carbon fiber electrodes* (4-10 microns) using methods developed in a nearby collaborating lab (Guitchounts et al. 2013). Carbon fiber is cheaply available with a range of electrical properties, but the common properties of high modulus and small diameter -- 5-10 micron vs. 30-50 microns for typical commercial microwire arrays (Ward et al. 2009) -- allows carbon fiber to penetrate brain tissue without deforming, and to remain long-term without provoking an inflammatory reaction (Kozai et al. 2012).

### LEDs:

High-intensity LEDs will be incorporated into the implant in favor of a traditional fiber-coupled laser primarily for their ability to *diffusely* illuminate neurons over a [large area]{.underline} and their *scalability*, which will be vital for *multi-site* and *chronic* modulation. LEDs do not couple efficiently to optical fibers of small diameter (\~200 microns is typical in optogenetics labs), but they can provide a far greater *luminous intensity* in a greater variety of wavelengths than lasers, at a fraction of the cost. The proposed project will incorporate LEDs built into the implant, with their emitting surfaces [closely coupled to the]{.underline} [brain surface]{.underline}.

LED arrays, and Digital Micromirror Devices (DMDs) and Liquid Crystal on Silicon (LcoS) chips have been considered as a means of greater spatial control of light intensity; any of these will be incorporated if the technology improves during the lifetime of the project, but the current state of technology places heavy restrictions on space and/or power requirements to merit incorporation into the implant. Incorporating multiple LEDs (4 to 8) will enable semi-independent activation of neurons in widely-separated brain regions, the proposed project will need to *overlap* this diffuse control with more precise targeted delivery of opsins (Packer, Roska, and Häusser 2013).

![](media/image3.png){width="1.4951388888888888in" height="1.0in"}**PCB and Implant:** ![L:\\People\\Bucklin Mark\\F31\\figures\\pcb\_bottom.PNG](media/image4.png){width="1.5121237970253718in" height="1.0in"}![L:\\People\\Bucklin Mark\\F31\\figures\\pcb\_top.PNG](media/image5.png){width="1.5214709098862642in" height="1.0in"}![L:\\People\\Bucklin Mark\\F31\\figures\\2013-12-04 15.33.53.jpg](media/image6.jpeg){width="1.5191251093613298in" height="1.0in"}

Figure 1Circuit Board for Electrodes and LEDs

  -- -- --

  -- -- --

Here I describe the design strategy for the physical implant outlined in **Aim 1** that will provide pathways to and from the mouse brain for the the electrodes and LEDs described above, as well as the circuit board that sits within this implant and consolidates all *input/output* signals for connection with a computer. This project will strive to ensure the bidirectional chronic neural implant is *resilient* to the abuse it will surely endure over the weeks to months of service *affixed to the cranium* of a laboratory mouse. The outcome we wish to avoid is *movement* of the penetrating electrodes within the brain tissue when external forces act on the implant, or when internal forces cause the animals brain to move relative to its skull. Moreover, if the electrode is unable to move with the brain there is substantial risk of electrode breakage.

We are designing the implant to address this potential issue from two directions: the first strategy is to make the implant as *tolerable* for the animal as possible by minimizing its weight, rounding all edges, and fabricating with a bioinert material such as polymethylmethacrylate (PMMA), polyetheretherketone (PEEK), and silicone elastomer. Elastomer or functionally similar material will be used to encase the printed circuit board (PCB) once electrodes are driven to their prescribed depth and electrical connections made. The encasement will cover the entirety of the board with the exception of two connectors for electrophysiology readout and LED power, and a heatsink connector for each LED . Heatsinks for the LEDs will either be copper tube or carbon fiber. The second strategy for minimizing electrode movement involves *floating* the connection between the electrodes and the PCB. The goal of this procedure is to allow the electrode -- with one end in the brain and the other in a plated through-hole -- to move vertically and laterally relative to the PCB while maintaining electrical contact with the pad. The method for accomplishing this is still being developed; fortunately its success is not critical to the project, but merely an improvement.

### Electrophysiology

The neural interface proposed in this document will record 32 signals simultaneously. To minimize the risk that poor trajectory planning could have on the results described in **aim 3**, we will specify targets redundantly. Thus, for each round of testing with our Parkinson's mouse model we will select 8 brain areas to record from redundantly and bilaterally. 7 of the 8 will be selected from a set of brain areas for which claims have been made in the literature suggesting functional relevance to Parkinson's disease; as a *control* for each round, the 8^th^ will be selected from a set of areas for which no connection with PD has ever been reported. Each round will begin with a modified CAD model of the implant (for modified electrode trajectories), which will be 3D printed or fabricated on a 4-axis CNC-mill in the lab.

### Front-end Digitization:

Recording will be accomplished with the RHD2132 digital electrophysiology interface chip produced and made freely available by Intan ("RHD2000 Amplifier Chips \| Intan Technologies" 2013). The chip accomplishes as much as a traditional electrophysiology system at a price that is orders of magnitude less, and a package that takes up much less space.

### Signal Filtering, LFP and MUA:

Electrophysiology data will be digitally filtered on the Intan chip using parameters selected by the machine-learning routine. The only hard limits on bandwidth will be dictated by the requirements of the analog to digital converter (ADC), i.e. a high-pass filter to remove drifting DC offsets and a low-pass filter to prevent aliasing. These limits will vary depending on electrode impedance and sampling frequency, but will have cutoff frequencies or roughly 0.1 Hz and 10 KHz respectively. While there is much published in regard to the spatial extent and information content in common named frequency bands, the algorithm that selects filtering parameters will not incorporate any of these assumptions.

That being said, we expect the learning algorithm will find more *reliably relevant* features in the classic Local Field Potential (LFP) range, which is typically low-pass filtered with a cut-off around 300 Hz. It's thought that LFP represents a sum of neural activity from cells within a 50-250 micron radius of the electrode tip, or more if activity is highly correlated (Lindén et al. 2011). This spatial scale allows for variability in electrode position across subjects, and for small movements of the electrode over time (Andersen, Musallam, and Pesaran 2004).

## Aim 2 -- Optimization of closed-loop stimulation pattern with machine-learning algorithms:

Closed-loop input/output will be handled at three levels by multiple computers.

### Input/Output:

The lowest level -- implemented on the Intan RHD2132 amplifier chip and RHD2000 evaluation board -- handles analog-to-digital conversion and filtering of electrophysiology data. Also at this level -- but implemented on a different computer -- are the movement tracking functions described above.

### Closed-loop State Estimation and Adaptive Neuromodulation:

Streams of electrophysiology and behavior/movement data are sent to the second level, a *real-time* computer system encapsulating all the *closed-loop* functions of the platform. This computer will use the *Real-time eXperiment Interface* (RTXI; www.rtxi.org), an open-source Linux-based operating system supported by the NIH (Lin et al. 2010). This system provides modules for data acquisition, storage, synchronization of output, and more. RTXI will be installed on an ARM-based embedded system such as the open-source *Puggle*, or a similar embedded processor from Texas Instruments. What is *Puggle*? *"Puggle is ARM-based, real-time data acquisition and processing tool. It is designed to sense, process, and react to both analog and digital input signals in hard real-time. Puggle is designed for closed-loop electrophysiology applications...* (<http://www.puggleboard.com)>.*"* The closed-loop routine running at this level will analyze neural and behavioral data using parameters from the next higher level. The analysis step will conclude with two estimates for *neural* and *behavioral state*, with this combination *mapped* to an output routine with parameters that are also passed down by the higher level. The specifics of the output routine will be handled by a connected microcontroller, will be interrupt-driven, and will ultimately control the power of optical output from each LED over time.

### Generation and Evaluation of Stimulus Paradigm:

The highest level of processing will be implemented in a *non-real-time* environment, MATLAB on Windows. Raw data and activity logs from the closed-loop routine will be written to disk continuously. A machine-learning routine will analyze these data and send updated parameters to the closed-loop computer as described below. All parameter updates will also be written to disk in synchrony with acquisition for retrospective analysis as described by **Aim 3**.

### Machine-Learning & Optimization:

The process for selecting exactly how to stimulate a brain follows a common routine both in the clinic and research laboratory. After having spatially localized an electrode in the intended position, physicians (and neuroscientists) will begin stimulation with a temporal pattern that is fully defined with two or three parameters (e.g. a binary pulse-sequence with constant amplitude, frequency, and duty-cycle). Effects of stimulation are often immediately apparent. The physician or neuroscientist -- let's just call this person the "*decision-maker*" -- will evaluate the subjects behavior and compare this evaluation to the desired *target* behavior. In the example case of PD the deviations from this "target behavior" include akinesia, gait-inbalances, and postural instability, but might also include iatrogenic responses such as dyskinesias or diplopia. The decision-maker then draws on their experience to estimate which parameters should be adjusted, and with what magnitude in order to shift behavior towards the intended target. In the absence of experience, the decision-maker relies on *education* (many years of it in either the physician or scientist's case). The first adjustment is applied, and the effect on behavior is evaluated once again. The inexperienced decision-maker learns something new, and can use this new information in combination (or perhaps even *in contrast!)* with their prior education to estimate the effect of adjustments in any or all available parameters, and make a decision that begins the cycle again.

Humans are excellent learners -- undoubtedly better than any other species on Earth. Computers are not; they are painfully literal and will not flip a bit without being told to. Their persistence, however, is their saving grace, and is the aspect that makes machine learning possible, given creatively designed seeds of human thought and recursive and inversive instructions for expanding this seed. The process of cyclic evaluation and decision-making described above will be used as a model for a machine-learning algorithm with two goals: optimizing the identification of *disease-relevant neural states*, and optimizing a neuromodulation routine for *disease-related symptom reduction*.

### Identification of Neural State:

The algorithm used to optimize closed-loop identification of neural neural state will be developed from a set of common *pattern-recognition* algorithms and *semi-supervised learning* models, including support vector machines (SVMs), logistic, polynomial, or linear regression, principal component regression (PCR), Kalman filtering, and hidden Markov models (HMM). These algorithms will be applied to recorded data and *selected for implementation* in the closed-loop routine based on measures of performance (discussed below) and ability to meet computation-time specifications (\<\~250 ms).

### Stimulus Sequence Generation:

Each neural state will be mapped to a neuromodulation routine that is applied continuously (with *sub-millisecond* response time) until the next state-estimate and routine update. Each stimulation sequence will initially be defined by random selection from a set of sequence *archetypes*, and further specification by random selection of *archetype-specific-parameters*. The real-time process will handle application of the state-mapped sequence, but the sequence formation routines will be run in the non-real-time process. Both open-loop (for control/comparison) and closed-loop stimulation archetypes will be generated from three sources, with generic examples from each source in the table below:

1.  Common achetypes reported in literature, e.g. DBS-style constant pulse generation.

2.  Novel archetypes generated in creative thinking and discussion sessions with colleagues.

3.  Concocted archetypes from chaotic-generation algorithm

  **Common Archetypes**                                                                                                                                                                                              **Novel Archetypes**                                                                                                                        **Concocted Archetypes**
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [Constant DBS-type square wave]{.underline} with parameters for amplitude, frequency, and pulse-width/duty-cycle (open-loop)                                                                                       LED power (stimulation) in each area of control proportional to [arctangent of phase difference]{.underline} between two areas.             Chaotically generate functions by recombining elements from the novel and common archetypes, and also by applying every function available in MATLAB (use *what* and *lookfor* functions applied in *try...catch...* blocks to find statements that work with given data)
  [Triggered impulse response]{.underline} with parameters defining a threshold or feature from any channel that triggers stimulation of some shape that initiates at some delay (Rosin et al. 2011) (closed-loop)   Stimulation is continuously proportional a [ratio of band-pass filtered signal magnitude]{.underline} from arbitrarily selected channels.
  [Phase Cancellation]{.underline} of filtered signal from any defined channel (Brittain et al. 2013) (closed-loop)                                                                                                  Signal from one channel is used to construct [wavelet]{.underline} then convolved with other channels with output determining pulse-shape

The number of possible archetypes used by sourcing in these ways will be extensive, so much so that trying them manually would be unmanageable. This is where the automated machine-learning algorithm which selects, applies, evaluates, and optimizes each routine for several hours every day becomes absolutely necessary.

### Stimulus Optimization:

As the real-time component runs its state-response cycle and logs data, the non-real-time machine-learning component will evaluate its performance and update parameters in an attempt to optimize *symptom suppression*. This evaluation process will identify "hot" parameters ( those with large effect), and continue sending parameter updates until symptom suppression cannot be optimized further. This process will be slow to allow observation of subtle effects of stimulation in noisy data. If manipulation of all available parameters yields no changes in behavior, a new stimulation archetype will be tried.

This type of process is sometimes referred to as a *Genetic* *Algorithm*, where the parameters for a particular archetype would be viewed as the *genes* that define a species. The *fitness* of each individual combination genes (i.e. parameters) determines survival and consequent ability to pass genes to the next generation. In our implementation, we'd be running multiple species (i.e. archetypes) as well, with the expectation that many will be quickly declared extinct.

## Aim 3 -- Systematic evaluation of potential DBS targets and mechanisms in PD mouse model:

### Animal Model:

To that end we are currently inducing a quantifiable PD-like state in mice with a unilateral injection of the neurotoxin 6-hydroxydopamine (6-OHDA) into the striatum, and subsequent administration of apomorphine to provoke side-biased motor deficits (Iancu et al. 2005) . Side-biased "turning" behavior is quantified autonomously on two distinct platforms, a computer-vision system that allows free movement, and a virtual-reality spherical treadmill platform that simulates free movement.

### Metrics of Behavior:

Two testing platforms will be used to assess changes in behavior over time. Behavior is analyzed and quantified in real-time, and will be synchronized with electrophysiology and made available as another stream of input for the closed-loop routine. The quantification routine creates a signal that is representative of symptom severity. For our unilaterally lesioned mouse model of PD the most readily observable impairment is the inability to walk straight; mice will turn in circles contralateral to the lesion when given intraperitoneal apomorphine. The behavioral apparati are described below.

**Virtual-Reality/Spherical Treadmill:** ![](media/image7.jpeg){width="1.5in" height="2.485615704286964in"}

A virtual reality system has been assembled, adopting methods from another lab (Harvey et al. 2009). This system allows placement of a head-restrained mouse on an 8-inch diameter polystyrene foam ball supported by a cushion of compressed air, surrounded by a toroidal projection screen. Ball rotation is tracked with two optical computer mice placed orthogonal to each other. Movement vectors are fed into a virtual-reality engine that updates the image projected onto a toroidal screen surrounding the ball, simulating movement through any arbitrary virtual world. Movement vectors are recorded as an arbitrarily scaled translation in the mouse-relative X and Y axes and rotation around the Z axis, at approximately 30 ms intervals. This behavioral apparatus has the advantage of allowing trivial measurement of the mouse's movement ability while the mouse is head-fixed. The disadvantage is the time and potential confounds involved with training individual mice to use the system.

**Free Behavior with Video Tracking:** ![](media/image8.jpeg){width="1.5in" height="1.2711318897637796in"}

![](media/image9.tiff){width="2.0in" height="1.7125in"}![](media/image10.tiff){width="1.4986111111111111in" height="1.5541666666666667in"}A webcam-based motion tracking box has been constructed to analyze the movement of our unilaterally lesioned PD mouse model. Video is recorded at 15 frames per second and processed on-line or off-line using a function written in MATLAB. Briefly, this function converts each frame to a black and white image (logical matrix), uses morphological filtering functions to isolate the mouse (remove mouse excrement) and identify its body (remove the tail), then finds the center of mass in cartesian coordinates (maximum center of projection on x- and y-axes), and the rostral-caudal orientation measured in degrees off the x-axis. Orientation is determined by the index of maximum of a radon transform of the binary image. Processing is accomplished at a rate of 15-16 fps, using a single core, or 64 fps using parallel processing on a quad-core processor with multi-threading enabled. The advantage of this apparatus over the virtual-reality system is that it allows free movement of an untrained mouse, with real-time movement metrics at nearly the same rate as the spherical treadmil
