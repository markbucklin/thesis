## Closed-Loop Diffuse Optogenetic Neuromodulation

<!-- carbon fiber electrode & LED -->
<!-- (Deep-Target Carbon-Fiber Electrode Array and Bilateral Illumination) -->

Chronic implant for long-term multi-site recording and optogenetic neuromodulation. The implant is fixed to a mouse’s skull with dental cement, and sits on top of bilateral 5 mm craniotomies. Electrodes are driven through 32 guiding-tunnels along pre-determined trajectories to bilateral targets in thalamus, striatum, prefrontal cortex, motor cortex and auditory cortex. 2 High-intensity LEDs are coupled to optical fibers driven to mediodorsal and centromedial thalamic nuclei. Electrode trajectories are computed in stereotaxic coordinates and imported into CAD model to construct guiding-tunnel features that facilitate correct placement of electrode tips in brain targets and connection to a circuit board. A-C) CAD model of implant. D) Circuit board for electrode termination and LED power.

<!-- from submitted NRSA/F31 Application -->
Brain disease, often accompanied by enormous personal and economic costs, continues to emerge as among the most pressing contributors to the global disease burden. Unprecedented advances in biotechnology and in portable electronics support tremendous opportunity to conduct research with excellent potential for advanced understanding, improved treatments, and one day cures for these devastating diseases, disorders and conditions. This project would leverage technology from the fast-moving forefronts of electronics and biomedical research to build a next-generation neuroprosthetic.

### Project Summary

Deep Brain Stimulation (DBS) has been used clinically since the early 1990’s, and is currently approved by the FDA for treatment of Parkinson’s disease (PD) and essential tremor, with Humanitarian Device Exemptions for OCD and dystonia. However, benefits of DBS treatment are unpredictable and show varying degrees and patterns of symptom suppression across patients. This is likely partly due to a need for neural implant devices capable of more numerous and specific stimulation contact areas, as well as a lack of knowledge regarding DBS mechanism of action. There is growing evidence, that suggests that increases in synchronized oscillatory activity in certain brain circuits represent a pathologic and moreover symptomatic state in PD, the disruption of which is believed to yield the beneficial effects of DBS. Likewise, this abnormal synchronization is a mechanism for numerous other common neurologic and psychiatric disorders that include epilepsy, obsessive compulsive disorder and depression. The central goal of this project is to develop a novel adaptive neuromodulation platform that increases both the number of neural contacts and the specificity of their location as compared with DBS in order to create a more effective and targeted treatment alternative, and in the process to examine DBS therapeutic mechanisms. Development of such an alternative has far reaching implications including improved patient symptoms, fewer surgical procedures and broader application across patient populations. To reach Aim 1, a bidirectional neural interface with penetrating silicon electrodes capable of simultaneously recording from multiple sites of the Parkinson’s mouse model intracranially. Such a device would be developed and interspersed with LED-coupled optical-fibers for multi-point optogenetic neuromodulation. To perform neuromodulation with high spatiotemporal precision, optogenetic methods would be used to activate or silence specific neurons expressing rhodopsins in mice using certain colors of light. For Aim 2, machine-learning algorithms would implement a library of optimized strategies to efficiently determine the neural network states responsible for a specific disease condition using a closed-loop control system and a second slower, more complex routine routine that records and analyzes the streams of neural and behavioral data, and assesses the performance of state-estimates and controls applied by the real-time component. The neural network states identified in Aim 2 are expected to conform and converge into distinct archetypes, such as beta oscillations, within the cortical-basal gangion circuits outside of the classical PD neural circuit. Once proven correct, the proposed therapeutic mechanisms of DBS through altering neural network pathological representations would provide a basis for a new generation of neural circuit based neuromodulation therapies.

#### Background

Deep Brain Stimulation (DBS) has been used clinically since the early 1990’s, and is currently approved by the FDA for treatment of Parkinson’s disease (PD) and essential tremor, with Humanitarian Device Exemptions for OCD and dystonia. In 1987 a French neurosurgeon observed during a thalamotomy procedure - where stimulation was applied for localization of ventralis intermedius - that high-frequency stimulation was able to suppress an extrapyramidal tremor (Benabid et al. 1987)(Liker et al. 2008). Subsequent studies in a non-human primate Parkinson’s model suggested high-frequency stimulation (\~100-200 Hz) of the Subthalamic Nucleus (STN) was as effective as a lesion, in that it“jammed” neural activity at the tip of the electrode, yet it was tunable and reversible (Eusebio, Cagnan, and Brown 2012). Long term efficacy is around 50% using a standard clinical scale (UPDRS III)(Beuter and Modolo 2009); DBS can provide symptomatic improvement in tremor, rigidity, and bradykinesia, and can also facilitate a substantial reduction in levodopa dosage and consequent reduction in its major side-effects, i.e. dyskinesia (Eusebio, Cagnan, and Brown 2012). While DBS has substantially improved our ability to treat PD and other movement disorders, the therapeutic effect remains insufficient and unpredictable.

The mechanism by which DBS suppresses parkinsonian symptoms is still uncertain. However, there are growing evidence to suggest that increases in synchronized oscillatory activity in basal ganglia and thalamo-cortical circuits – so-called *Beta-frequency* oscillations – represents a pathologic and moreover *symptomatic* state in PD, the disruption of which is accomplished by high-frequency stimulation (Wilson and Netoff 2011). Meanwhile, synchronized activity in the beta range is also involved in many normal cognitive functions, and abnormal synchronization is likewise a mechanism for numerous other neurologic and psychiatric disorders (Velazquez 2012),(Andrews 2010). Consequently DBS has potential to become an effective treatment for epilepsy(II and Netoff 2013), OCD(Bourne, Eckhardt, and Sheth 2012), depression(Mayberg et al. 2005),(Malone Jr. et al. 2009),(Mayberg 2009), Alien Hand Syndrome and Tourette’s(Krack et al. 2010), obesity(Taghva, Corrigan, and Rezai 2012), alcoholism(Heldmann et al. 2012), addiction(Luigjes et al. 2012), autism(Sturm et al. 2013), Alzheimer’s disease(Laxton and Lozano 2012), and schizophrenia(White, Gilleen, and Shergill 2013),(Uhlhaas and Singer 2006). There are a large number of case-reports describing off-label DBS treatments, and a few small clinical trials(Kennedy et al. 2011; Sarem-Aslani and Mullett 2011). In 2009 Medtronic received a Humanitarian Device Exemption (HDE) to market a DBS device for OCD, called *Reclaim*(“Reclaim^TM^ Deep Brain Stimulation for Obsessive Compulsive Disorder (OCD) Therapy - H050003”2013). While closed-loop DBS might be even better suited for the complex dynamics of psychiatric disorders, most investigators have stuck with movement and seizure disorders(Sarem-Aslani and Mullett 2011), presumably feeling more comfortable with well-established animal models and FDA-approved applications; or perhaps feeling *less* comfortable with the ethical questions inherent to treating of behavior.

### Project Plan

Deep brain stimulation (DBS) has revolutionized the treatment of neurological and psychiatric diseases over the past couple decades. A DBS device is essentially a cardiac pacemaker reconfigured to stimulate a small region of brain near the tip of an electrode with high-frequency pulses of electrical current; despite this simplicity, DBS has been used widely for treating movement disorders, such as Parkinson’s disease (PD) and dystonia. The impressive performance of DBS on alleviating movement deficits associated with PD and dystonia has motivated a number of ongoing clinical trials on assessing its use in treating other brain disorders, such as obsessive compulsive disorder and depression. However, benefits of DBS treatment are unpredictable and show varying degrees and patterns of symptom suppression across patients. Unfortunately, this technology in its current iteration has been unable to overcome these limitations. This is likely due in part to a need for neural implant devices that are capable of more numerous and specific stimulation contact areas. Additionally, the DBS mechanism of action remains unknown and this further limits its ability to become wholly sufficient treatment. The central goal of this project is to develop a novel adaptive neuromodulation platform with increased neural contacts and their specificity as well as to examine the therapeutic mechanisms of DBS. I hypothesize that aberrant neural network dynamics underlie the behavioral symptoms of brain disorders, and DBS therapeutic effect is through scrambling pathological neural network patterns. While I would primarily focus on PD here, the principles discovered through this study should be easily generalized to design novel therapies for other neurological and psychiatric disorders.

#### Design a novel adaptive neuromodulation platform for closed loop control of neural activities {#sec:f31-aim1}

Functional neural systems underlying brain disorders are likely complex, impacting interconnected brain areas. To reliably distinguish normal and pathologic neural network states, such as the “on/off” states in PD, it would be advantageous to simultaneously measure neural activities in multiple relevant brain areas. The platform proposed here consists of a bidirectional neural interface with penetrating silicon electrodes capable of simultaneously recording from multiple sites interspersed with LED-coupled optical-fibers for multi-point optogenetic neuromodulation. I would use the commercially available multicontact silicon electrodes, known as Michigan probes, that are 5um thick and capable of recording up to hundreds of locations simultaneously. To perform neuromodulation with high spatiotemporal precision, I would use optogenetic methods to activate or silence specific neurons expressing rhodopsins in mice using certain colors of light. Even though this system is designed for mice in this study, the principles demonstrated here have a clear translational path to humans.

#### Implement a library of closed loop modulation protocols with machine-learning algorithms {#sec:f31-aim2}

To efficiently determine the neural network states responsible for a specific disease condition, I would use machine-learning algorithms to implement a library of optimized strategies. Specifically, this system consists of two parts: The first is a closed-loop control system responsible for gathering and analyzing streams of neural and behavioral data in real-time to estimate a neurobehavioral state, and then applying a state-specific optogenetic control with patterned light into the brain. The second component is a slower and more complex routine that records and analyzes the streams of neural and behavioral data, and assesses the performance of state-estimates and controls applied by the real-time component. State-response strategy updates would be periodically fed from the thoughtful controller (2^nd^ component) to the real-time decision maker (1^st^ component) using variations of traditional machine-learning algorithms to generate successively optimized strategies.

#### Systematically evaluate the neural circuit mechanisms underlying DBS therapeutic effect on PD {#sec:f31-aim3}

Even though the precise therapeutic mechanism of DBS is unclear, DBS has revealed tremendous information about the brain’s functionings and dysfunctionings. For example, pathological beta oscillations, oscillations around 20Hz, have been widely observed in the cortical-basal gangion circuits in PD patients implanted with DBS electrodes. As the causal role of beta oscillations is yet to be established, it is likely that the neural network states identified in Aim 2 would conform and converge into distinct archetypes, such as beta oscillations within the cortical-basal gangion circuits relevant to PD. I hypothesize that neuromodulation outside of the classical PD neural circuit would be therapeutic, in so far as such neuromodulation is capable of scrambling pathological network dynamics. Once proven correct, the proposed therapeutic mechanisms of DBS through altering neural network pathological representationswould provide a basis for a new generation of neural circuit based neuromodulation therapies.

### Significance

This proposal focuses on developing a novel closed-loop neuromodulation system using optogenetics and an intelligent control algorithm. This approach enables automation of a search for individual-optimized stimulation patterns, and adaptation of these patterns over time in response to fluctuating symptoms.

#### Justification for This Approach

The novel closed-loop neuromodulation system as presented here has far reaching implications. These include improved patient symptoms, fewer surgical procedures ( for battery replacement) and broader application in terms of patient population and disease profiles. The increase in number and range of stimulation sites and rapid real-time response rate of the proposed mechanism would yield such results (Lozano and Lipsman 2013). Furthermore, the information on DBS mechanism gleamed from this study would have immediate effects on the current technology

#### Shortcomings

Any device that relies on optogenetics to deliver stimulation to neurons inherently shares the same hurdles to clinical translation, the requirement for gene-therapy and its associated risks. Several early trials of viral transfection of cells had adverse effects including a greatly increased risk of carcinoma. In these early studies, the DNA insertion location was uncontrolled leaving important regions of DNA tumor suppressor genes exposed to damage. New methods that improve the safety of gene therapy have been developed. Several of the more recent methods utilize adeno-associated virus (AAV) and show greater control regarding DNA insertion and decreased DNA damage. These more recent methods suggest a possibility that with continuing research, such a method may be developed without the potential for malignancy.

Working on a project that requires a technology that does not as of yet exist, represents one of the greatest educational benefits of this project. That leap of faith into a future that does not exist requires us to depend on each other as a team of collaborators, as each of our work depends on the others’ success. In order to succeed, we must do so together; and without eachother, our therapeutics would never reach their ultimate goal, the patient. As such, we would share each success and setback in the same way whether such events occur within our own labs or labs across the country.

### Research Design and Methods

<!-- Aim 1 – Develop an adaptable closed-loop stimulator: -->
<!-- ---------------------------------------------------- -->
#### Prior data

The initial stages of this project have focused on aim 1 – designing the physical components of the bi-directional neural interface – and the peripheral aspects of aim 2 – development of an automated behavioral assay for our prototypic animal model of Parkinson’s disease.

#### Neural Interface

A *chronic neural implant* is required for this project, as the machine-learning component of this closed-loop system would require time and signal stability to function effectively. While our lab currently employs chronically implanted drivable tetrode arrays, this project would benefit from dropping this complexity in favor of *static* electrodes that are set to their prescribed position during the initial surgery, and never thereafter.

<!-- ![](media/image1.png){width="2.0in" height="1.2013888888888888in"}**Electrodes: **
![](media/image2.png){width="2.0in" height="0.6486111111111111in"} -->
Sustained penetration of brain tissue with large (&gt;15 microns) diameter electrodes provokes a chonic inflammatory reaction to the foreign body eventually encapsulates the electrode in a “glial scar” and inhibits regeneration of neural process in the vicinity (Polikov, Tresco, and Reichert 2005). The chronic implant designed for this project would use silicon electrodes to record from deep brain targets, and for shallow targets would employ *carbon fiber electrodes* (4-10 microns) using methods developed in a nearby collaborating lab (Guitchounts et al. 2013). Carbon fiber is cheaply available with a range of electrical properties, but the common properties of high modulus and small diameter – 5-10 micron vs. 30-50 microns for typical commercial microwire arrays (Ward et al. 2009) – allows carbon fiber to penetrate brain tissue without deforming, and to remain long-term without provoking an inflammatory reaction (Kozai et al. 2012).

#### LEDs

High-intensity LEDs would be incorporated into the implant in favor of a traditional fiber-coupled laser primarily for their ability to *diffusely* illuminate neurons over a *large area* and their *scalability*, which would be vital for *multi-site* and *chronic* modulation. LEDs do not couple efficiently to optical fibers of small diameter (\~200 microns is typical in optogenetics labs), but they can provide a far greater *luminous intensity* in a greater variety of wavelengths than lasers, at a fraction of the cost. The proposed project would incorporate LEDs built into the implant, with their emitting surfaces *closely coupled to the* *brain surface*.

LED arrays, and Digital Micromirror Devices (DMDs) and Liquid Crystal on Silicon (LcoS) chips have been considered as a means of greater spatial control of light intensity; any of these would be incorporated if the technology improves during the lifetime of the project, but the current state of technology places heavy restrictions on space and/or power requirements to merit incorporation into the implant. Incorporating multiple LEDs (4 to 8) would enable semi-independent activation of neurons in widely-separated brain regions, the proposed project would need to *overlap* this diffuse control with more precise targeted delivery of opsins (Packer, Roska, and Häusser 2013).

<!-- ![](media/image3.png){width="1.4951388888888888in" height="1.0in"}**PCB and Implant
![L:\\People\\Bucklin
Mark\\F31\\figures\\pcb\_bottom.PNG](media/image4.png){width="1.5121237970253718in" height="1.0in"}![L:\\People\\Bucklin
Mark\\F31\\figures\\pcb\_top.PNG](media/image5.png){width="1.5214709098862642in" height="1.0in"}![L:\\People\\Bucklin
Mark\\F31\\figures\\2013-12-04 15.33.53.jpg](media/image6.jpeg){width="1.5191251093613298in" height="1.0in"}

Figure 1Circuit Board for Electrodes and LEDs

  -- -- --
        
  -- -- -- -->
Here I describe the design strategy for the physical implant outlined above that would provide pathways to and from the mouse brain for the the electrodes and LEDs described above, as well as the circuit board that sits within this implant and consolidates all *input/output* signals for connection with a computer. This project would strive to ensure the bidirectional chronic neural implant is *resilient* to the abuse it would surely endure over the weeks to months of service *affixed to the cranium* of a laboratory mouse. The outcome we wish to avoid is *movement* of the penetrating electrodes within the brain tissue when external forces act on the implant, or when internal forces cause the animals brain to move relative to its skull. Moreover, if the electrode is unable to move with the brain there is substantial risk of electrode breakage.

We are designing the implant to address this potential issue from two directions: the first strategy is to make the implant as *tolerable* for the animal as possible by minimizing its weight, rounding all edges, and fabricating with a bioinert material such as polymethylmethacrylate (PMMA), polyetheretherketone (PEEK), and silicone elastomer. Elastomer or functionally similar material would be used to encase the printed circuit board (PCB) once electrodes are driven to their prescribed depth and electrical connections made. The encasement would cover the entirety of the board with the exception of two connectors for electrophysiology readout and LED power, and a heatsink connector for each LED . Heatsinks for the LEDs would either be copper tube or carbon fiber. The second strategy for minimizing electrode movement involves *floating* the connection between the electrodes and the PCB. The goal of this procedure is to allow the electrode – with one end in the brain and the other in a plated through-hole – to move vertically and laterally relative to the PCB while maintaining electrical contact with the pad. The method for accomplishing this is still being developed; fortunately its success is not critical to the project, but merely an improvement.

#### Electrophysiology

The neural interface proposed in this document would record 32 signals simultaneously. To minimize the risk that poor trajectory planning could have on the results described in [@sec:f31-aim3], we would specify targets redundantly. Thus, for each round of testing with our Parkinson’s mouse model we would select 8 brain areas to record from redundantly and bilaterally. 7 of the 8 would be selected from a set of brain areas for which claims have been made in the literature suggesting functional relevance to Parkinson’s disease; as a *control* for each round, the 8^th^ would be selected from a set of areas for which no connection with PD has ever been reported. Each round would begin with a modified CAD model of the implant (for modified electrode trajectories), which would be 3D printed or fabricated on a 4-axis CNC-mill in the lab.

#### Front-end Digitization

Recording would be accomplished with the RHD2132 digital electrophysiology interface chip produced and made freely available by Intan (“RHD2000 Amplifier Chips | Intan Technologies” 2013). The chip accomplishes as much as a traditional electrophysiology system at a price that is orders of magnitude less, and a package that takes up much less space.

#### Signal Filtering, LFP and MUA

Electrophysiology data would be digitally filtered on the Intan chip using parameters selected by the machine-learning routine. The only hard limits on bandwidth would be dictated by the requirements of the analog to digital converter (ADC), i.e. a high-pass filter to remove drifting DC offsets and a low-pass filter to prevent aliasing. These limits would vary depending on electrode impedance and sampling frequency, but would have cutoff frequencies or roughly 0.1 Hz and 10 KHz respectively. While there is much published in regard to the spatial extent and information content in common named frequency bands, the algorithm that selects filtering parameters would not incorporate any of these assumptions.

That being said, we expect the learning algorithm would find more *reliably relevant* features in the classic Local Field Potential (LFP) range, which is typically low-pass filtered with a cut-off around 300 Hz. It’s thought that LFP represents a sum of neural activity from cells within a 50-250 micron radius of the electrode tip, or more if activity is highly correlated (Lindén et al. 2011). This spatial scale allows for variability in electrode position across subjects, and for small movements of the electrode over time (Andersen, Musallam, and Pesaran 2004).

<!-- Aim 2 – Optimization of closed-loop stimulation pattern with machine-learning algorithms:
----------------------------------------------------------------------------------------- -->
Closed-loop input/output would be handled at three levels by multiple computers.

#### Input/Output

The lowest level – implemented on the Intan RHD2132 amplifier chip and RHD2000 evaluation board – handles analog-to-digital conversion and filtering of electrophysiology data. Also at this level – but implemented on a different computer – are the movement tracking functions described above.

#### Closed-loop State Estimation and Adaptive Neuromodulation

Streams of electrophysiology and behavior/movement data are sent to the second level, a *real-time* computer system encapsulating all the *closed-loop* functions of the platform. This computer would use the *Real-time eXperiment Interface* (RTXI; www.rtxi.org), an open-source Linux-based operating system supported by the NIH (Lin et al. 2010). This system provides modules for data acquisition, storage, synchronization of output, and more. RTXI would be installed on an ARM-based embedded system such as the open-source *Puggle*, or a similar embedded processor from Texas Instruments. What is *Puggle*? *“Puggle is ARM-based, real-time data acquisition and processing tool. It is designed to sense, process, and react to both analog and digital input signals in hard real-time. Puggle is designed for closed-loop electrophysiology applications…* (<http://www.puggleboard.com)>.*”* The closed-loop routine running at this level would analyze neural and behavioral data using parameters from the next higher level. The analysis step would conclude with two estimates for *neural* and *behavioral state*, with this combination *mapped* to an output routine with parameters that are also passed down by the higher level. The specifics of the output routine would be handled by a connected microcontroller, would be interrupt-driven, and would ultimately control the power of optical output from each LED over time.

#### Generation and Evaluation of Stimulus Paradigm

The highest level of processing would be implemented in a *non-real-time* environment, MATLAB on Windows. Raw data and activity logs from the closed-loop routine would be written to disk continuously. A machine-learning routine would analyze these data and send updated parameters to the closed-loop computer as described below. All parameter updates would also be written to disk in synchrony with acquisition for retrospective analysis as described by [@sec:f31-aim3].

#### Machine-Learning & Optimization

The process for selecting exactly how to stimulate a brain follows a common routine both in the clinic and research laboratory. After having spatially localized an electrode in the intended position, physicians (and neuroscientists) would begin stimulation with a temporal pattern that is fully defined with two or three parameters (e.g. a binary pulse-sequence with constant amplitude, frequency, and duty-cycle). Effects of stimulation are often immediately apparent. The physician or neuroscientist – let’s just call this person the “*decision-maker*” – would evaluate the subjects behavior and compare this evaluation to the desired *target* behavior. In the example case of PD the deviations from this “target behavior” include akinesia, gait-inbalances, and postural instability, but might also include iatrogenic responses such as dyskinesias or diplopia. The decision-maker then draws on their experience to estimate which parameters should be adjusted, and with what magnitude in order to shift behavior towards the intended target. In the absence of experience, the decision-maker relies on *education* (many years of it in either the physician or scientist’s case). The first adjustment is applied, and the effect on behavior is evaluated once again. The inexperienced decision-maker learns something new, and can use this new information in combination (or perhaps even *in contrast!)* with their prior education to estimate the effect of adjustments in any or all available parameters, and make a decision that begins the cycle again.

Humans are excellent learners – undoubtedly better than any other species on Earth. Computers are not; they are painfully literal and would not flip a bit without being told to. Their persistence, however, is their saving grace, and is the aspect that makes machine learning possible, given creatively designed seeds of human thought and recursive and inversive instructions for expanding this seed. The process of cyclic evaluation and decision-making described above would be used as a model for a machine-learning algorithm with two goals: optimizing the identification of *disease-relevant neural states*, and optimizing a neuromodulation routine for *disease-related symptom reduction*.

#### Identification of Neural State

The algorithm used to optimize closed-loop identification of neural neural state would be developed from a set of common *pattern-recognition* algorithms and *semi-supervised learning* models, including support vector machines (SVMs), logistic, polynomial, or linear regression, principal component regression (PCR), Kalman filtering, and hidden Markov models (HMM). These algorithms would be applied to recorded data and *selected for implementation* in the closed-loop routine based on measures of performance (discussed below) and ability to meet computation-time specifications (&lt;\~250 ms).

#### Stimulus Sequence Generation

Each neural state would be mapped to a neuromodulation routine that is applied continuously (with *sub-millisecond* response time) until the next state-estimate and routine update. Each stimulation sequence would initially be defined by random selection from a set of sequence *archetypes*, and further specification by random selection of *archetype-specific-parameters*. The real-time process would handle application of the state-mapped sequence, but the sequence formation routines would be run in the non-real-time process. Both open-loop (for control/comparison) and closed-loop stimulation archetypes would be generated from three sources, with generic examples from each source in the table below:

1.  Common achetypes reported in literature, e.g. DBS-style constant pulse generation.

2.  Novel archetypes generated in creative thinking and discussion sessions with colleagues.

3.  Concocted archetypes from chaotic-generation algorithm

*Constant DBS-type square wave* with parameters for amplitude, frequency, and pulse-width/duty-cycle (open-loop) LED power (stimulation) in each area of control proportional to *arctangent of phase difference* between two areas. Chaotically generate functions by recombining elements from the novel and common archetypes, and also by applying every function available in MATLAB (use *what* and *lookfor* functions applied in *try…catch…* blocks to find statements that work with given data) *Triggered impulse response* with parameters defining a threshold or feature from any channel that triggers stimulation of some shape that initiates at some delay (Rosin et al. 2011) (closed-loop) Stimulation is continuously proportional a *ratio of band-pass filtered signal magnitude* from arbitrarily selected channels.\
*Phase Cancellation* of filtered signal from any defined channel (Brittain et al. 2013) (closed-loop) Signal from one channel is used to construct *wavelet* then convolved with other channels with output determining pulse-shape

The number of possible archetypes used by sourcing in these ways would be extensive, so much so that trying them manually would be unmanageable. This is where the automated machine-learning algorithm which selects, applies, evaluates, and optimizes each routine for several hours every day becomes absolutely necessary.

#### Stimulus Optimization

As the real-time component runs its state-response cycle and logs data, the non-real-time machine-learning component would evaluate its performance and update parameters in an attempt to optimize *symptom suppression*. This evaluation process would identify “hot” parameters (those with large effect), and continue sending parameter updates until symptom suppression cannot be optimized further. This process would be slow to allow observation of subtle effects of stimulation in noisy data. If manipulation of all available parameters yields no changes in behavior, a new stimulation archetype would be tried.

This type of process is sometimes referred to as a *Genetic* *Algorithm*, where the parameters for a particular archetype would be viewed as the *genes* that define a species. The *fitness* of each individual combination genes (i.e. parameters) determines survival and consequent ability to pass genes to the next generation. In our implementation, we’d be running multiple species (i.e. archetypes) as well, with the expectation that many would be quickly declared extinct.

### Systematic evaluation of potential DBS targets and mechanisms in PD mouse model:

To that end we are currently inducing a quantifiable PD-like state in mice with a unilateral injection of the neurotoxin 6-hydroxydopamine (6-OHDA) into the striatum, and subsequent administration of apomorphine to provoke side-biased motor deficits (Iancu et al. 2005) . Side-biased“turning” behavior is quantified autonomously on two distinct platforms, a computer-vision system that allows free movement, and a virtual-reality spherical treadmill platform that simulates free movement.

#### Metrics of Behavior

Two testing platforms would be used to assess changes in behavior over time. Behavior is analyzed and quantified in real-time, and would be synchronized with electrophysiology and made available as another stream of input for the closed-loop routine. The quantification routine creates a signal that is representative of symptom severity. For our unilaterally lesioned mouse model of PD the most readily observable impairment is the inability to walk straight; mice would turn in circles contralateral to the lesion when given intraperitoneal apomorphine. The behavioral apparati are described below.

<!-- Vertebrate Animals:
=================== -->
#### Proposed procedure

<!-- Each of the 100-200 total mice that would be used in this project would independently progress through 4 phases, depicted
in **Figure 1** below, with each color representing a distinct phase. The 2^nd^ phase, Animal Preparation & Implantation
(red outline), is expanded to show the sequence of individual steps; the specific implementation of the procedures used
in each of these steps would be established upon completion of the design process described in **Aim 1**. Every phase has
been carefully planned with the utmost concern for the welfare of animals used. Each component of the sequence, from
selection to sacrifice, is described in detail below.

Figure 1 - Sequence of stages involved in preparing each mouse for behavioral testing and 'treatment' with estimated
duration of each stage. BLUE: postnatal/pre-adulthood; RED: preparation; GREEN: automated daily ‘treatment’ (Aim 2 and
Aim 3, details in Research Strategy); BLACK: animal sacrifice and perfusion of the brain for histology. -->
<!-- #### Species, strains, ages, sex, and numbers -->
<!-- All procedures described in this proposal would use male and female adult transgenic mice from *optogenetic* and
*Cre-lox* strains, in addition to wild-type C57BL/6 mice. These mice come from a variety of sources, including vendors
(The Jackson Laboratory, MMRRC, Taconic), collaborators (Allen Institute for Brain Science, VA Boston Healthcare System,
University of Oregon) and from in-house breeding in the Boston University Laboratory Animal Care Facility (LACF) where
they are housed. Animal subjects would be *selected* for the first preparation stage (Acclimation & Observation) based on
*age* and *genotype*. Subject age at the start of testing must be between 2 and 12months. This lab breeds several
Cre-dependent optogenetic and Cre-expressing transgenic strains in-house (see **table below**). The proposed project
would select animal subjects from 3 genotype categories (see table) with two categories contributing positive and
negative *control subjects*. The third genotype would depend on the pre-trial selection of brain areas targeted for
stimulation in each individual mouse. -->
<!-- ----------------------------------------------------------------------------------------------------------------------------------------
  #### Cre-dependent transgenics**   **Optogenetic transgenics**   **Genotype Categories**
  ------------------------------- ----------------------------- --------------------------------------------------------------------------
Emx-Cre                         ChR2                          Control:
                                                                
    -   Wild-type (C57BL/6)
    
    -   Cre/Opsin homozygous F1 (crossed transgenics)
    
    Target:
    
    -   Cre transgenic with spatially restricted opsin expression (Han 2012)
    

PV-Cre                          ArchT                         

Chat-Cre                        Halo                          

Calbindin-Cre                   …                             

D1-Cre                                                        

SOM-cre                                                        -->
<!--                                                                 
  ----------------------------------------------------------------------------------------------------------------------------------------

The number of animals used over the course of this project is an estimate that breaks down as follows:

- Crossed transgenics (75 )

- Practice/non-survival surgery (25)

- Experimental Animals (successful implants)

  - Target (50)

  - Control (50)

- *Total: \~200* -->
#### Surgery\*\*

Mice would be anaesthetized prior to survival surgeries with a steady flow of 1-4% islofluorane in pure oxygen and depth of breathing would be monitored continuously. Once under, body temperature would be monitored and controlled with a heating pad and rectal thermometer. Prior to surgical incision, mice would be given a subcutaneous injection of 0.2 mg/kg buprenorphine. Hair removal and topical antiseptic (betadine and 70% alcohol) would be applied over the implantation site. The skull would then be stabilized with ear bars and an incision would be made in the caudal to rostral direction over the midline of the skull. With the use of a 2-dimensional template, positions for chronic electrodes would be marked on the skull with ink. A dental drill would be used to drill 16 small craniotomies (8 in each hemisphere) and injections would be made into brain regions underlying each craniotomy. 32 electrodes (2 in each craniotomy) would be inserted into the brain with a stereotaxic apparatus, and surgical lubricant would be placed over the surface of each craniotomy. Three bone screws would be inserted into the skull to stabilize the implant once it is in place. A custom head plate would be placed around the implanted electrodes and bone screws and cemented to the skull with bone cement.

All surgical implants and equipment would be autoclaved prior to surgery and kept clean with 10% bleach or chlorhexidine. Mice would be kept warm with a heating lamp during recover.

#### Behavioral Training\*\*

We expect that very few implantations would be successfully performed early in the project. The implant and circuitry design would almost certainly need revision, as would the surgical procedures and the software. However, once a functional design is settled on it would be trivial to scale the project so that several mice may be started (fitted with implants) each week. These mice would be observed in a bowl with a camera.

#### Justification

The mammalian nervous system is extremely complex. The intention of the proposed project is to build technology that would facilitate rapid development to novel therapeutics that alleviate human suffering caused by poorly understood neurological diseases. Transgenic mice are excellent for this project because of the easy availability and large variety of specific cell-type-expression in the brain areas we wish to target.

#### Veterinary Care

Mice for this project would be housed and cared for in Boston University’s AAALAC accredited animal facility. The Laboratory Animal Care Facility employs an Attending Veterinarian, a Veterinary Services Manager, and three veterinary technicians to oversee animals used in research.

#### Procedures to Ensure Limited Discomfort, Distress, Pain, and Injury

An extensive pubmed search for studies utilizing a similar experimental approach did not yield more appropriate methods for ensuring minimal pain and distress. Following surgical implantation 0.3 mg/kg injections of burprenorphine would be administered to mice every 6-12 hours for 48 hours, and they would be routinely observed for signs of pain and distress. Prior to animal behavior testing, mice would also be given time to adjust to the head-fixation device and running ball. ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#### Method of Euthanasia

Mice would be euthanized by either a lethal dose of sodium pentobarbitol administered IP or via CO~2~ gas chamber. Sodium pentobarbitol would be used if perfusion of neural tissue for histology is necessary. Because all animals used would be adults, CO~2~ asfixiation is appropriate. Cervical dislocation would follow either method of euthaniasia to ensure death. These methods are consistent with the AMVA Guidelines for Euthanasia of Animals.

#### Parameters for large-scale study

Figure 2 – This diagram shows the process outlined in AIM 3 used to select a set of input/output targets defining each mouse. The variables assigned at each stage would be used by the stimulation-control and machine-learning algorithms described in AIM 2. BLUE: Cre-LoxP mouse strain (cre) and genotype (0,-,+) from inbred and WT-crossed Cre-LoxP Transgenics. G0 = wild-type;, G-(cre) = heterzygous expression of cre; G+(cre) = homozygous expression of Cre (e.g. G+(Emx), G+(D1), etc.). BLACK: Stimulation targets defined by viral gene delivery using adeno-associated virus (AAV) vector. Each target is defined by the opsin/promoter-pair of the gene delivered and the stereotaxic-coordinates, or equivalently the brain region reference atlas acronym, defined using the ALLEN Mouse Brain Atlas. ap,ml,dv = anteroposterior, mediolateral, & dorsoventral coordinates respectively. e.g. ops∈{‘chr2’,’arch’,’arch’,…etc.}. pro∈{ ‘cag’,’caglox’}. k = 1,2,…,Q. where Q≤8 is the total number of unilateral brain regions targeted for injection. d,s = dexter, sinister, used to represent whether bilaterally symmetric target region is on right or left side of the brain respectively. For Example, S3d refers to the 3rd stimulation site in the right hemisphere for an individual mouse and would initially be defined programmatically with property:value pairs (MATLAB handle notation), e.g. &gt;&gt; mouse(36).S3d = S(‘chr2’,’caglox’,reg(-1.34,1.75,4.5)). RED: Recording target region defined by target tip placement of carbon-fiber or tungsten microwire recording electrodes (driven and fixed during initial surgery), similar to Sk except also including a parameter, p, referring to the pad on the the circuit board to which the electrode attaches. Each Rk can also be assigned filter parameters where ‘filt’ can be one of {filt\_lp, filt\_hp, filt\_bp} for low-pass, high-pass, and band-pass respectively, with appropriate cuttoff parameter, fs. GREEN: represents a fully defined mouse.
