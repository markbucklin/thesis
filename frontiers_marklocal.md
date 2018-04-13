# High speed wide-field fluorescence imaging in awake behaving mice yields data from hundreds of individual neurons over millimeters of tissue with high temporal resolution.  #

## Keywords: ##  calcium imaging, GCaMP, in vivo, hippocampus, behavior

Ali Ibrahim Ali Mohammed^1^, Howard J Gritton^1^, Hua-an Tseng^1^, Mark
E Bucklin and Xue Han

*Boston University, Department of Biomedical Engineering, Boston, MA
02215*

## Scientific Reports: ## 

## Cover letter ## 

All submissions must be accompanied by a cover letter.

Scientific Reports sections and ordering of manuscripts

We recommend that your manuscript is structured as follows.

## Title ## 

The title must be no longer than 20 words.

Author list and affiliations

The corresponding author should be identified with an asterisk.

## Abstract (heading not used) ## 

The abstract must be no longer than 200 words, and must not have a
heading. The Abstract should serve both as a general introduction to the
topic and as a brief, non-technical summary of the main results and
their implications. Abstracts must not contain references or
subheadings.

## Main body ## 

Scientific Reports has no explicit requirements for section
organization. According to the authors\' preferences, the main body of
the text can be organized as best suits the research. In some cases, it
may be appropriate to combine relevant sections. As a guideline, we
recommend that your manuscript contains the following sections:

## Introduction ## 

The introduction section of the main text expands on the background of
the work (some overlap with the Abstract is acceptable). The background
should put your paper into context and must be clear so that readers are
able to understand the aims, purpose and significance of your research.

## Results ## 

With topical subheadings

## Discussion ## 

The Discussion should be succinct and may not contain subheadings.

## Methods ## 

Subheadings are recommended. We recommend that authors limit their
Methods section to 1,500 words

The recommended maximum length for the main body of your manuscript is
4,500 words.

## References ## 

We recommend that references are limited to 60. References should be
numbered sequentially, first throughout the text, then in tables,
followed by figures. Scientific Reports uses the standard Nature
referencing style, for example:

Abstract
========

Systems neuroscience has advanced rapidly over the last several decades
as techniques for studying neural function have improved. One such
technique that offers great promise for advancing our understanding is
optical imaging of neural tissue. Technical advancements in cameras and
data processing combined with advances in calcium and voltage sensors
are allowing optical imaging to sample the neural code on much larger
scales than has traditionally been achievable. The use of this technique
can span large distances, covering both pre- and post-synaptic neurons
across regions within the same field of view providing unmatched
potential to record from large networks of neurons simultaneously. In
this report we demonstrate the ability of wide-field imaging to capture
the concurrent dynamic activity of hundreds of neurons in the
hippocampus simultaneously. These recordings can be conducted for hours
at a time with limited loss of signal due to photo-bleaching.
Furthermore, the dynamics of individual neurons can be dissociated from
breathing or motion related artifacts and the use of high sampling rates
allows for the dissociation of neural responses recruited by discrete
task stimuli with millisecond precision in task performing animals.

Introduction
============

A goal of systems neuroscience is to understand how the individual
activity of neurons comes to encode, or represent, environmental stimuli
or a cognitive process. Traditionally, techniques such as unit
electrophysiology have focused on sampling from a small number of
neurons at once, either locally or regionally, while techniques such as
EEG, fMRI or PET have focused on global populations of neurons or
regions actively engaged during a sample period. One of the challenges
of systems neuroscience is to effectively understand the transformation
that occurs from individual units to large populations of neurons or
"networks." Particularly how do these networks come to encode
information and how do these populations communicate specifically as it
relates to information processing, decision making, and the execution of
behaviors?

Much of our understanding of systems neuroscience can be directly
attributed to discoveries from extracellular electrophysiology and the
measurements of individual and populations of neurons in task performing
subjects. Electrophysiology has given us important insights into the
temporal dynamics of neurons and has helped to determine the
contributions of distinct neuron types to stimulus encoding or
particular behaviors [O\'Keefe and Dostrovsky 1971](#_ENREF_28)[Gallese,
Fadiga et al. 1996](#_ENREF_7)[Schultz, Dayan et al.
1997](#_ENREF_33)[Hafting, Fyhn et al. 2005](#_ENREF_13)(; ; ; ).
Electrophysiology provides a distinct advantage to measuring the
temporal dynamics of neurons but may not be ideally suited for all
recording regions, or experimental directives. For example,
classification of individual neurons that are sparse in their firing or
particular types of neurons (*i.e.*, classes of GABAergic cells) that
are densely packed or share similar waveform properties are often
difficult to isolate or identify and may remain undefined or undetected
with traditional electrophysiology methods. In addition, recordings are
limited to capturing sparse populations of neurons in close proximity to
the recording site, leading to challenges in inferring network
computations in large populations systems. Sparseness can be overcome in
part by larger electrode arrays, but band-width limitations and
stability of chronic recordings over days or weeks remain major
technical challenges. Even if these factors can be addressed, issues of
size and weight of the recording array continue to be a concern,
particularly in small rodent model systems like mice, during awake
behavior.

Optical imaging techniques concurrent with real-time voltage sensors
[St-Pierre, Marshall et al. 2014](#_ENREF_35)() or calcium indicators
[Andermann, Kerlin et al. 2010](#_ENREF_1)[Huber, Gutnisky et al.
2012](#_ENREF_17)[Ziv, Burns et al. 2013](#_ENREF_40)(; ; ) offers a
potential alternative for recording the ongoing activity of neuronal
ensembles during longitudinal behavioral studies. The newest generation
of calcium sensors (GCaMPs and GCaMPf), for example, are sensitive
enough to characterize single action potential events both in vitro and
in behaving animals [Chen, Wardill et al. 2013](#_ENREF_4)[Sun, Badura
et al. 2013](#_ENREF_36)(; ).

Optical imaging has traditionally involved wide-field imaging or two
photon imaging, each with their own distinctive advantages and
disadvantages [Hamel, Grewe et al. 2015; see for recent comparative
review of the two techniques](#_ENREF_14)(). In recent years, two photon
microscopy has been a preeminent choice for imaging in tissue, because
of its high spatial resolution, and tissue penetrating features [Hamel,
Grewe et al. 2015](#_ENREF_14)(). Two photon calcium imaging has been
broadly applied to individual cells or subcellular components of neurons
including spines and axons [Petreanu, Gutnisky et al.
2012](#_ENREF_30)[Xu, Harnett et al. 2012](#_ENREF_39)[Chen, Wardill et
al. 2013](#_ENREF_4)[Glickfeld, Andermann et al. 2013](#_ENREF_9)(; ; ;
). Because two photon microscopy uses a scanning mechanism, the signal
to noise ratio is influenced by the time spent imaging each point, and
the spatial resolution is determined by the number of points scanned to
obtain each image. As a result, the size of the imaging field is
inversely correlated with the overall temporal resolution while
maintaining a relatively high signal-to-noise ratio, thus, two photon
calcium imaging is often performed on a small area or on a sparse
network of cells, when dynamic responses with high temporal fidelity is
necessary.

Wide-field, or single photon imaging has been in use for several decades
and was first used to characterize the functional architecture and
hemodynamic responses in brain tissue [Grinvald, Lieke et al.
1986](#_ENREF_11)(). However, this technique has seen a renaissance
recently due to its simple instrumentation, relatively inexpensive cost,
and the improvements in neural signal indicators. Optical imaging and
two photon microscopy have traditionally been performed in head-fixed
preparations, but recent advances have also made it possible to perform
wide-field calcium imaging in freely moving animals, through
miniaturized and wearable microendoscope systems [Ziv, Burns et al.
2013](#_ENREF_40)(). While wide-field imaging lacks the spatial
resolution to resolve fine subcellular structure or the penetrating
properties available with two-photon, it is possible to obtain clear
neurites and somatic features, including spike detection [Ghosh, Burns
et al. 2011](#_ENREF_8)(). Because a single photon microscope does not
rely on scanning features, it can be used to sample a larger field of
view without sacrificing sampling rates. Additionally, recording
sessions may be less sensitive to fluorophore bleaching than other
techniques [Patterson and Piston 2000](#_ENREF_29)[Hopt and Neher
2001](#_ENREF_16)(; ), which makes it possible to perform sustained
illumination and subsequent imaging for an extended period of time - a
desired feature for analyzing neural networks during some behavior
paradigms (*e.g.,* repeated trial learning paradigms). Thus, wide-field
imaging offers an advantage if the objective is to simultaneously
recording hundreds of neurons in the brain of a living and behaving
animal with high temporal fidelity.

In this report we have set out to illustrate how to assemble and
implement a low cost wide-field imaging system capable of recording the
activity of hundreds to thousands of neurons simultaneously in a
behaving animal. We also carefully address prominent issues in the field
not often discussed including image stabilization, and cell labeling or
ROI generation. We then utilize this system to record from the
hippocampal CA1 area of awake behaving mice during a well characterized
hippocampal dependent behavior task - trace eyeblink conditioning
[Solomon, Vander Schaaf et al. 1986](#_ENREF_34)[Moyer, Deyo et al.
1990](#_ENREF_25)[Tseng, Guan et al. 2004](#_ENREF_37)[Sakamoto,
Takatsuki et al. 2005](#_ENREF_32)[Gruart, Munoz et al.
2006](#_ENREF_12)(; ; ; ; ). We conclude by presenting data that
demonstrates wide-field imaging responses can be classified with high
temporal resolution to discrete elements of task behavior and offer our
perspective for the future of this technique, what challenges are left
to address, and where we believe emphasis ideally should be placed going
forward.

Results
=======

## Design: wide-field Ca2+ imaging of hippocampal CA1 neural network inawake behaving mice  ## 

To demonstrate the feasibility of imaging a large neural network using a
wide-field single-photon technique, we constructed a conventional
epifluorescence microscope using commercially available optical
components. This setup included a microscope objective, consumer camera
lenses, high-intensity LEDs, a filter set appropriate for imaging
GCaMP6f, and a Scientific CMOS (sCMOS) camera (Figure 1a). We then
employed this system to record from the hippocampal CA1 area of awake
behaving mice. The CA1 region has a thin and densely packed pyramidal
cell layer nestled between two thick and sparsely populated layers, the
stratum radiatum and the stratum oriens, making it ideally suited for
wide-field imaging as fluorescence signal from neurons situated in the
focal plane are less contaminated from somatic fluorescence sources
located above or below the pyramidal cell imaging layer (figure 1b).

Next, we selected a task which requires the hippocampal formation that
is easily adaptable for a head-fixed preparation and is supported by an
extensive literature. To this end, we chose a simple trace conditioning
behavioral paradigm. Trace condition depends on the association of two
events separated in time that are otherwise unrelated. The first event
-- the conditioned stimulus (CS) acts as a predictive cue that reliably
precedes the forthcoming unconditioned stimulus (US). Trace conditioning
depends on the intact hippocampus [Moyer, Deyo et al.
1990](#_ENREF_25)[Tseng, Guan et al. 2004](#_ENREF_37)(; ) and numerous
studies support CA1 pyramidal cells as playing a key role in the
encoding of relevant environmental conditioned stimuli [Modi, Dhawale et
al. 2014](#_ENREF_24)(). Figure 1c illustrates the task design used in
this experiment. The unconditioned stimulus is a 5psi air puff centered
on the animals right eye. The CS is shown in black and consisted of a
9500Hz pure tone delivered at 80dB SPL for 350ms. Sound termination was
followed by a 250ms stimulus free trace interval, concluded with a 100ms
air puff shown in red.

## Implantation, imaging, and data storage  ## 

21-28 days prior to training, mice were surgically injected with
AAV-synapsin-GCaMP6f virus into the CA1 pyramidal cell layer, and then
implanted with an imaging window and cannula (figure 1b; see methods).
Upon recovery, animals were habituated to the recording apparatus before
undergoing training. We performed calcium imaging through the
chronically implanted window using the epifluorescence microscope while
animals were trained on the trace eyeblink paradigm described earlier.
Fluorescence imaging was performed at 20Hz sampling rate and at a
spatial resolution of 1024x1024 pixels with each pixel corresponding to
1.312x1.312 μm^2^. A training session consisted of 40 tone-puff trials
delivered with a 35±5 second ITI and images were recorded continuously
throughout the training session that lasted approximately 25 minutes. We
acquired imaging data at 16 bits/pixel typically resulting in data sets
approaching 50GB for each recording session using these parameters.
Imaging data was stored as multi-page tag image file format (mpTIFF's)
and processed off line. All data presented below comes from the fourth
day of training and performance is indicative of a well-trained animal.

## Image processing: Movement Correction and ROI characterization ## 

We performed a series of image pre-processing steps -- namely contrast
enhancement and motion correction -- followed by an automated process
that generates of regions of interest with the spatial and temporal
characteristics we expect of hippocampal CA1 neurons labeled with
GCaMP6f as described below.

We acquired images from a 1343x1343 μm^2^ area (figure 2Ai: first frame;
figure 2Aii: z-stack projection of max value across all frames). Images
were first processed to remove motion artifact that is associated with
physiological processes that are primarily biological, and therefore
unavoidable. These influences can come from respiration, changes in
blood flow, or voluntary skeletal muscle movement that directly
influences the position of the brain. Because the brain is cushioned and
supported by cerebral spinal fluid within the skull, even subtle flexing
in skeletal plates or jaw movements from bones surrounded the brain can
produce micrometers of movement in the imaging plane. In order to
address this, images were referenced to stable global and local spatial
landmarks (*i.e.*, vasculature, sulci) and each image was matched in the
XY plane relative to the movement. This movement produces an index which
can be used to access the severity of motion artifact across each
recording session. We found that across animals, and across days, the
amount of motion correction of each image session remained relatively
constant for each animal (in average, 7.72±6.46 μm/frame for 36 image
sessions). The data set characterized below represents a data set with a
typical motion index (7.29±4.29 μm/frame).

After image movement correction, regions of interest were then
identified based on both the temporal profiles of individual pixels and
the spatial distribution of pixel clusters based on neuron morphology
(see methods). We subsequently identified 422 total regions of interest
across the entire imaging field (figure 2Aiii). A close examination of
densely labeled areas showed that the ROI selection process was able to
recognize the majority of the neurons within the imaging field (figure
2B, 131.2x131.2 μm^2^). The GCaMP6f fluorescent traces were then
extracted from the processed video for each ROI and normalized based on
the average and maximal values for each for all subsequent analysis (see
methods). These one dimensional traces were used to draw comparisons
across trials to itself and to other ROIs. Each ROI showed dynamic
features ranging from sparse activity to highly active (figure 2C,
colors indicate the corresponding ROIs shown above in figure 2B). For
some ROIs, their traces contained clear examples of summation of neural
activity over brief time intervals, matching the fluorescent signals in
the images (figure 2D). These responses also reveal that neurons in the
CA1 region of the hippocampus have highly interspersed temporal and
spatial patterns of activity even amongst neighboring neurons as has
been previously reported in electrophysiology studies [Redish, Battaglia
et al. 2001](#_ENREF_31)()

## Ca2+ signals in the hippocampus during eyeblink conditioning representtask related behavior ## 

Data from an animal at asymptotic performance (Day 4 of training, see
methods) was analyzed to determine if calcium responses in the
hippocampus could be classified and matched to discrete task stimuli as
has been described in electrophysiology experiments [Solomon, Vander
Schaaf et al. 1986](#_ENREF_34)[MacDonald, Carrow et al.
2013](#_ENREF_20)(; ). We found that a large number of neurons (n=207)
showed significant increases or decreases in calcium signal in the
period coincident with sound onset and extending several seconds
afterward relative to baseline activity. Figure 3A highlights a series
of traces from a group of randomly selected ROIs over a three trials
window. We found that for many of the ROIs, the onset of the calcium
signal coincided with the CS onset and that this was particularly robust
on correctly detected trials as described below.

Electrophysiology studies have shown that the hippocampal neural
activity codes for task stimuli, and that increased activity correlated
with the trace interval is enhanced on correct trials relative to
incorrect trials [Green and Arenos 2007](#_ENREF_10)(). We therefore
examined our dataset to determine if Ca^2+^ imaging revealed a similar
phenomenon. In order to do so, ROIs were sorted based on their mean
responses during the 0-2 second window following CS onset and separated
based on trial outcome - correct trials (figure 3B left) and incorrect
trials (figure 3B right). Correct trials occurred when the mouse
conditionally responded to the sound stimulus with an eyelid movement
that was significantly above that seen in the pre-sound period and prior
to the air puff (see methods). Based on this criterion this mouse
initiated an eyelid movement to the conditioned stimulus on 33 out of 40
of the training trials. This level of performance is consistent with
other aversive eyeblink performance studies in mice where animal reach
asymptotic performance in the range of 50-80% of trials [Tseng, Guan et
al. 2004](#_ENREF_37)[Kishimoto, Nakazawa et al. 2006](#_ENREF_18)[Green
and Arenos 2007](#_ENREF_10)[Hattori, Chen et al. 2015](#_ENREF_15)(; ;
; ). We found that neurons within the population demonstrate both
positive and negative modulation by the conditioned stimulus and that
the strength of this response can be modulated by trial outcome (*i.e.,*
whether the animal responded correctly or incorrectly). This is most
clearly demonstrated in the individual ROI traces shown in figure 3C.
For many ROIs, the increase in activity was particularly robust on
trials in which when the animal correctly responded to the CS as opposed
to failed trials (figure 3C, ROI 172 and 298, blue: correct trials, red:
incorrect trials). For other ROIs, activation was actually inhibited
(*i.e.,* less likely to respond during the CS or US relative to the
pre-stimulus or post-stimulus periods; figure 3C, ROI 266). This
demonstrates that information about the neural activity relevant to
behavioral outcome (both increases and decreases) can be extracted from
Ca^2+^ imaging.

We also were interested in addressing the question of how well we could
dissociate responses of individual neurons and relate them to different
periods of task stimuli. Electrophysiolgy has a unique advantage in
temporal precision being able to resolve the timing of action potentials
with millisecond precision. We wanted to determine the resolution with
which individual calcium transients could be resolved and relate them
back to discrete periods of task performance. We sorted the ROIs based
on their peak latencies during over a 10 second window (figure 4A, left:
correct trials, right: incorrect trials). Interestingly, the timing of
neural responses for a large portion of the population (159 out of 422
ROIs) reached their fluorescent peak within 0-2 seconds of CS onset
(figure 4B) and likely represent activity directly related to the
trace-conditioning behavior (*i.e.,* sound (CS), air puff (US), and/or
the trace interval) as described in previous electrophysiology studies
[Berger, Rinaldi et al. 1983](#_ENREF_3)[Weiss, Kronforst-Collins et al.
1996](#_ENREF_38)[McEchron and Disterhoft 1997](#_ENREF_21)[McEchron and
Disterhoft 1999](#_ENREF_22)[McEchron, Weible et al.
2001](#_ENREF_23)[Munera, Gruart et al. 2001](#_ENREF_26)[Green and
Arenos 2007](#_ENREF_10)[Hattori, Chen et al. 2015](#_ENREF_15)(; ; ; ;
; ; ; ). ROIs in this group also show distinct variations in their onset
profiles and the peak time of activity, which could reflect the
differences in individual firing patterns of that particular neuron
(figure 4C). Some ROIs showed rapid onset latencies (figure 5c, ROI 327)
while others increased at slower rates, covering a longer time period
(figure 5c, ROI 143 and 312). Many of these neurons showed peak activity
that corresponded to the time window between sound onset and puff and
may have a functional role of bringing the gap between the CS and the US
as has been proposed by others as a possible function of the hippocampus
during trace intervals [Solomon, Vander Schaaf et al.
1986](#_ENREF_34)[Levy, Sanyal et al. 2005](#_ENREF_19)(; ). This
indicates that calcium imaging using GCamp6f is sufficiently fast enough
to discriminate neural responses from neurons responding to discrete
elements of behavior with sub-second resolution.

We also identified a second group of neurons (146 out of 422 ROIs) that
had not shown a significant response in the two second window
characterized above, however, they did show a robust increases in
activity several seconds after the air puff was delivered (figure 4A).
This finding suggests that neural response profiles in the hippocampus
are not only dynamic, but can occur over wide temporal time scales and
that careful consideration of analysis windows is necessary. In this
case, a large number of task relevant signals emerged from a window that
could be deemed task inconsequential.

## Hippocampal neurons that respond to task-relevant stimuli have a
global distribution throughout the CA1 region and are not co-localized
## 

One of the benefits of using wide-field imaging is the ability to sample
over very large areas. In this data set we measured hippocampal activity
across 1.34x1.34 mm^2^ at the resolution of 1.312 μm/pixel. This
distance is large enough to capture the majority of the dorsal pole CA1
region in the hippocampus simultaneously. This allows us to address
questions which previously could not be answered including the spatial
and temporal topography of neurons recruited by the task employed here
over large distances. For example, it is possible that individual
neurons may be segregated into networks that are relatively localized
based their potential to receive coincident input as has been shown in
spatial hippocampal maps [Eichenbaum, Wiener et al. 1989](#_ENREF_6)().
This seems to be supported, at least in small networks, for trace
eyeblink conditioning by two-photon imaging results showing that neurons
that are more correlated with one another appear to be spatially
clustered [Modi, Dhawale et al. 2014](#_ENREF_24)(). In order to address
this question, we decided to sort neurons under two distinct criteria:
by averaged amplitude during the cue-response window (0-2 second) shown
in figure 3 and by response latency as shown in figure 4. We then mapped
those profiles to the ROI locations in the recording window (figure 5A
and figure 5B, respectively). We found that neurons with the largest
amplitude responses to task stimuli were largely interspersed throughout
the recording window, while neurons that were more largely inhibited
tended to cluster together (figure 5A). Previous electrophysiology
experiments have suggested that CA1 neurons responding to environmental
stimuli are largely heterogeneously intermixed [O\'Keefe
1979](#_ENREF_27)[Barnes, McNaughton et al. 1983](#_ENREF_2)[Redish,
Battaglia et al. 2001](#_ENREF_31)(; ; ) although there may be some
local organization [Eichenbaum, Wiener et al. 1989](#_ENREF_6)(). It is
interesting that in this data set, we found evidence for both spatial
and non-spatial organization, with neurons inhibited by task stimuli
being largely more clustered then those excited by task stimuli. We also
looked at whether neurons might cluster by the time course of their
activity (figure 5B). Based on our analysis, ROIs within this region of
hippocampus show no topographical organization based on their to their
response latencies relative to one another as has been previously
reported in CA1 pyramidal cells during spatial navigation [Dombeck,
Harvey et al. 2010](#_ENREF_5)[Modi, Dhawale et al. 2014](#_ENREF_24)(;
).

Discussion
==========

In this report we have outlined a simple and economical optical imaging
system that allows for recording the simultaneous activity of hundreds
of neurons over large areas in a task performing animal.

To demonstrate the functionality of this system and how to implement it,
we chose to record Ca^++^ signals in the hippocampal CA1 area, because
of its unique anatomical advantage. CA1 contains limited cell layers,
which allows us to avoid most out of focused light when imaged with
wide-field technique. In addition, several studies have explored the
contribution of hippocampal neurons based on electrophysiology data as
it relates to trace eye blink conditioning making this preparation an
ideal experiment for testing our configuration. We were able to directly
draw comparisons between what is known from the electrophysiology
studies and make comparisons to those of the signals recorded here.
Previously it has been reported that CA1 hippocampal neurons come to
represent the CS, US, or both as the association is well learned
[Berger, Rinaldi et al. 1983](#_ENREF_3)[Weiss, Kronforst-Collins et al.
1996](#_ENREF_38)[McEchron and Disterhoft 1997](#_ENREF_21)[McEchron and
Disterhoft 1999](#_ENREF_22)[McEchron, Weible et al.
2001](#_ENREF_23)[Munera, Gruart et al. 2001](#_ENREF_26)[Green and
Arenos 2007](#_ENREF_10)[Hattori, Chen et al. 2015](#_ENREF_15)(; ; ; ;
; ; ; ). Recent studies with two-photon imaging has also ascribed a role
for CA1 in this task although sampled over a smaller region where they
found that ROIs become more correlated in CA1 with increased training
over a single day of learning [Modi, Dhawale et al. 2014](#_ENREF_24)().
Data from our study presumably support this finding, although we are not
presenting data from the learning phase, we did observe that neurons
come to represent task relevant stimuli over several days of repeated
training.

We found that populations of ROI come to represent specific features of
task-relevant stimuli and that these representations are stable across
trials. In addition, these responses are distributed with responses to
sound being dissociable from responses to the aversive eye-puff as
illustrated in figure 4. This suggests that for a variety of tasks, wide
field imaging offers the potential to answer questions that other
techniques may not. Although GCaMP6f has the improved response time
among most Ca^2+^ indicators, its temporal resolution is limited to
resolving signals separated by several hundred milliseconds or more.
Electrophysiology has far better temporal resolution when it can be
applied but may not be suitable for all experimental conditions. Future
advances are likely to alleviate some of these concerns as larger and
less invasive recording arrays are developed with the technology to
enhance sampling bandwidth through digitizing head stages. As of now
though, if information from large populations or from specific cell
types is required, Ca^2+^ imaging provides a potential alternative.

Despite its high cost and limited field size, two-photon remains the
other viable option for imaging studies and offers an additional
advantage of better separating overlapping ROIs through scanning depth
control and the ability to have a more defined focal plane. Although,
two-photon is currently limited in terms of the number of neurons that
can be recorded simultaneously with high temporal resolution, it does
provide an advantage in resolving neurons that are overlapping in the
z-axis. Overlapping ROIs were an area of concern in ROI detection in our
data as we found several examples of ROIs overlapping in depth but
clearly belonging to separate units as they had uniquely different
temporal activity patterns. In our experiment we chose to exclude ROIs
that were highly overlapping and appearing at different depths, although
they clearly were dissociable to the naked eye. It is possible that
better dissociation may be achieved through sparser labeling and this
also has the added advantage of facilitating the ease and speed with
which an computational ROI selection analysis can be performed.

We found that although minor, motion artifacts are an omnipresent issue
inherent to recordings made in awake behaving animals. It is likely that
motion will remain an inherent problem in all imaging techniques as many
physiological processes (heart-rate, respiration) introduce micro
movements that need to be compensated for. We found that a rigid motion
correction based on topographical landmarks was sufficient to eliminate
the majority of movement artifact. We believe that imaging at speeds
greater than 20Hz will improve motion correction algorithms as motion
displacement between images will be minimized resulting in less blurring
artifact. Additionally, the use of a second label utilizing a Ca^2+^
insensitive fluorophore and multi-color imaging might offer the best fit
solution to motion correction. Our filter allowed for the emission
capture of 496-576nm wavelength signal but the potential to have a dual
spectrum filter to capture a non-dynamic and omnipresent neural marker
might allow for a more ideal template match for ROIs in these types of
studies. Another advantage of second label would be that it could
provide a better estimation regarding the number of neurons in the
recording field independent of neural activity. Generally, ROI detection
algorithms rely on identifying fluorescent changes caused by neural
activity and therefore are likely to weighted towards highly activate
neurons while overlooking cells with sparse activity.

An additional future challenges of recording from a large number of
neurons with high spatial and temporal resolution will be downstream
image processing and data analysis, particularly as better voltage and
calcium indicators are developed with finer temporal profiles. Our lab
is currently developing software to address these issues and the shared
contributions and collaborations across imaging labs is fundamental to
the advancement of this technique.

The latest generation of genetically encoded calcium sensors deliver a
substantial boost in signal strength. This -- combined with equally
critical advances in the semiconductor technology available in
scientific cameras -- enables high-throughput detection of neural
activity in behaving animals using traditional wide-field fluorescence
microscopy [Chen, Wardill et al. 2013](#_ENREF_4)(). This breakthrough
in signal strength is manifested by a considerable increase in the
spatial and temporal resolution that has traditionally been achieved. It
also suggests that optical imaging may provide a useful technique for
addressing system neuroscience questions that link neurons to network
function. Taken together our results suggest wide-field imaging offers
to advance systems neuroscience by allowing us to better understand
neural function and relate it to behavior. We also addressed often
under-discussed issues related to motion correction and ROI labeling.
This technique is widely applicable to different brain regions and can
be used to target specific cell types through promoter specific genetic
expression. Wide-field imaging is a stable and long term option for
tracking vast neural signals over days or weeks offering insight into
questions about how individual cell populations come to form ensembles
and how representations may be over days and weeks.

Methods
=======

Subjects:
---------

Female C57BL/6 mice (aged 8--12 weeks at start) were used in all studies
(Taconic; Hudson, NY). Animals were housed 2--4 animals per cage until
the second surgery and then they were individually housed until the
conclusion of the experiment. Animals were housed on a 12:12 light-dark
cycle. All mice underwent two surgical procedures separated by two
weeks. All procedures were approved by the Boston University Committee
Institutional Animal Care and Use Committee and conducted in
laboratories and facilities accredited by the Association for Assessment
and Accreditation of Laboratory Animal Care (AAALAC). 

## Viral vector: ## 

AAV9-Syn-GCaMP6f.WPRE.SV40 virus was obtained from the University of
Pennsylvania Vector Core (V3862TI-R(37.5); Titer 6.56e12 (GC/ml), Yield
1.312e12 (GC)).

## Cannula Preparation: ## 

Sterile custom-made cannula were made in house prior to surgery. Cannula
consisted of a stainless steel tube (OD: 0.317 mm, ID: 2.36; height, 2
mm; Small Parts B004TUE45E) bonded to a circular coverslip (size 0; OD:
3mm; thickness, 0.17mm) using a UV-curable adhesive (Norland Products).
Imaging windows were disinfected by storage in ethanol and rinsed just
prior to implantation in sterile saline.

Animal Surgery:
---------------

Mice were anesthetized under isoflurane (1.5--2%). The eyes were covered
with eye ointment to prevent drying. Mice were placed on a regulated
heating pad to maintain body temperature. The depth of anesthesia was
tested with the toe-pinch withdrawal reflex. Subsequently, mice were
placed in a stereotactic frame and the skin of the head was cleaned with
70% ethanol prior to incisions.

Viral injection -- surgery one: A 5mm anterior to posterior incision was
made along the midline exposing the skull. The skull was dried and a
small craniotomy (1mm) was made at the following stereotaxic
coordinates: (AP: --2 mm, ML: 1.4 mm from Bregma). A 10uL syringe (World
Precision Instruments, Sarasota, FL) with a 33 gauge needle (NF33BL;
World Precision Instruments, Sarasota, FL) was loaded with the virus
encoding for GCaMP6f and attached to a microsyringe pump
(UltraMicroPump3-4; World Precision Instruments, Sarasota, FL). The
needle was stereotaxically lowered through the open craniotomy slowly to
a final depth of DV: --1.6 mm from the cortical surface. 250nL of GCamp6
was infused at a rate of 40 nl/min into the right dorsal hippocampal CA1
region. Following injection, 10 min elapsed before removing the
injection needle.

Two weeks after viral injection animals were prepped for surgery as
described above and then anesthetized and placed in a stereotaxic frame.
A second surgery was performed to cement an imaging cannula and window
just above the dorsal hippocampus. The skin above the skull bone was
removed with surgical scissors. Anchoring screws (3-4) were additionally
placed at locations around the original virus injection location. A
3.2mm diameter portion of the right skull was removed with the center
being the original virus injection infusion hole using a dental drill.
The dura was carefully removed and the cortex above the hippocampus was
aspirated under low suction (\~1-2psi) with a 27 gauge needle attached
to a 1 ml syringe with flexible tubing. When the corpus callosum was
reached, aspiration was stopped. Subsequently, the craniotomy was rinsed
with sterile PBS before the imaging cannula was lowered (\~1.0mm) into
the craniotomy and placed flush against the corpus callosum. Kwik-Sil
Silicone Elastomer (World Precision Instruments; Sarasota, FL) was
slowly placed at the juncture between the cannula and the bone to
provide a barrier that blocked the dental cement from contacting the
brain. After drying (1-2 min) the ventral portion of the cannula was
secured to the bone and surgical screws using dental acrylic (C&B
Metabond, Edgewood,NY). Finally, a custom made aluminum headplate was
attached to the skull and screw posts anterior to the imaging cannula.

Following both surgeries, animals were given post-operative analgesics
for 48 hours post-surgery buprenorphine (0.05 mg/kg; [ ]###Reckitt Benckiser Pharmaceuticals Inc., Richmond, VA) and allowed
animals to recover from surgery for 4 weeks prior to animal training or
imaging.

## Animal Behavior: ## 

### Trial Configuration ###

Individual trials consisted of a 350ms 9500Hz pure tone (CS) digitized
at 100kHz with a 5ms cosine ramp delivered at 80dB SPL. The tone was
followed by a 250 ms trace interval and then a 100ms long 5psi air puff
(US) delivered controlled via a solenoid (Clippard EV-2, Cincinnati, OH
) and delivered through a 0.5 mm cannula positioned 2-3 cm away from the
right eye. Trials occurred randomly with an inter-trial interval of
30-40 seconds.

### Animal training ###

Mice were trained to criterion on a conditioned trace eyeblink task.
Training was modified slightly from other previously published paradigms
[Tseng, Guan et al. 2004](#_ENREF_37)[Modi, Dhawale et al.
2014](#_ENREF_24)(; ). Briefly, animals were allowed to recover from
surgery (4weeks) before being handled and habituated to the training
apparatus for 3 consecutive days. During habituation and training,
animals were fixed to custom holder that consisted of a 34 mm diameter
aluminum half-tube that supported the animal and allowed for attachment
of the headplate at the anterior end. Animals were covered on top by an
elastic wrap that prevented upward movement out of the half-tube.
Habituation occurred at the same time as subsequent training (4-8 hours
after lights-on). Following the habituation period, animals began
training on the conditioned eyeblink task. With the exception of the
first day of training, mice were trained in two blocks of 40 trials
each. On the first day of training animals received 20 sound alone
trials to determine a baseline level of eyeblink response for the tone
prior to any CS-US pairing. Subsequent training (days 2-5) consisted of
2 blocks of CS-US training. A single 40 trial block took approximately
20 minutes. Animals were then given a 10min rest period before being
trained on the second block. Prior to the training session animals were
positioned underneath the CMOS camera and had the airpuff tube and
USB3.0 camera oriented for air puff delivery and eye movement capture,
respectively. A custom MATLAB script controlled the behavioral stimuli
and image capture timing using TTLs delivered via a I/O interface
(USB-6259; National Instruments, Austin, TX). Image capture for both
cameras were time locked to each other and sampling occurred at 20Hz.
Exposure time was fixed at 35ms.

Eyelid position was monitiored using Point Grey FlyCapture 2 software
and Flea3 USB3 camera (FL3-U3-13S2C-CS; Richmond, BC, Canada). Eyelid
position was calculated by converting the area of the eye into a region
of interest using ImageJ (NIH; http://imagej.nih.gov/ij/). The eye and
surrounding area was illuminated using an IR lamp positioned
approximately 0.5 meters away. Using this configuration, eye lid area
can be recorded as an increase in reflection that occurs as the eyelid
closes impinging on the defined eye ROI.

### Behavioral Analysis: ]###

Correct trials were characterized as those with changes in reflection
that surpassed a significance threshold defined by that trials baseline
activity. The threshold interval consisted of the 600ms period following
CS onset but prior to airpuff delivery. The baseline reflection values
were calculated from the 3 second interval just prior to sound onset and
reflect the deviation of reflection values used to determined threshold
value that was applied during the response window using the following
criterion:

$$\backslash n{threshold = \ {u(blink}_{\text{pre}}) + {2.5\sigma(blink}_{\text{pre}})}$$

Trials were characterized then as correct or incorrect using this
criterion and that standard was applied in separating ROIs based on
behavioral outcome.

## Microscope, Camera, and ##  Hippocampal Imaging:

Image acquisition was performed via a scientific CMOS (sCMOS) camera
(ORCA-Flash4.0 LT Digital CMOS camera C11440-42U; Hamamatsu , Boston,
MA). Fluorescence excitation is done with a 5W LED (LZ1-00B200, 460 nm;
LedEngin, San Jose CA). Image optics included a LEICA N PLAN 10X 0.25
PH1 MICROSCOPE OBJECTIVE, Excitation filter (HQ 470/50), Dichroic mirror
(FF506-Di02) and Emission filter (FF01-536/40). All CMOS hippocampal
imaging data was collected on a 128GB RAM Windows 8 computer using a
GeForce GTX Titan video card. Images were captured as multi-page tag
image file format (mpTIFF's) using a commercially available software (HC
Image Live; Hamamatsu; Boston, MA).

Image Processing:
-----------------

After image acquisition, we processed the data with a MatLab toolkit
developed in our lab.

### Image Pre-processing: Contrast Enhancement, Motion Correction and Data Storage ###

Image contrast enhancement was performed in the log domain because of
the multiplicative nature of light. We enhanced the contrast by removing
the low-frequency spatial component. To remove the displacement caused
by motion, we maximized the correlation coefficient between each frame
and a template image by shifting the frame along the xy plane. We used
the first frame as our initial template image and further refined the
template image with the motion-corrected image during the motion
correction process. The motion-corrected images were then saved as a new
video file with 8 bit dynamic range to reduce the file size, with the
top 1% intensity saturated at 255 and the bottom 1% set at 0.

### Region of Interest (ROI) software detection ###

The ROI detection process started with using a dynamic threshold to
identify the "hot" pixels within each frame. The initial threshold was
set at the mean intensity of the frame plus 1.5 standard deviation, and
further adjusted by two criteria. The threshold is increased or
decreased if the number of "hot" pixels are more than 2.5% of total
pixels or are less than 300 pixels, respectively. The "hot" pixels in
each frame were than grouped into single-frame ROIs. Any single-frame
ROI doesn't fit with the criteria (area size between 50 and 300 pixels,
eccentricity is less than 0.93) was discarded. To generate the ROI data
set of all frames, we then clustered and merged the single-frame ROIs
from all frames together if their centroid is less than 10 pixels away.

### Regions of Interest Selection for Analysis ###

Following ROI detection described above, we next limited our data set
only to ROIs with minimal overlapping areas. ROIs were selected based
morphology and dynamic activity by the observers blinded to trial timing
or events. The selected ROIs were then applied to the motion-corrected
video to generate the Ca^2+^ signal traces. Each trace was normalized
with the conventional way:

$\Delta f = \ \frac{\left( f - f_{\text{avg}} \right)}{f_{\text{avg}}}$

Where f~avg~ is the averaged value of the trace. The ∆f was than
rescaled so that the maximal value of the trace equals to 100%.

## Figure Legends: ## 

## Figure 1:  ## 

## Figure 2: ## 

Imaging view of recording area and individual ROIs: (Ai) 1343x1343 μm^2^
area representing the first frame of a standard imaging session. (Aii)
Z-stack projection of max value across all frames. (Aiii) Color plot
image of all 422 regions superimposed in the imaging field. (Bi)
131.2x131.2 μm^2^ from area highlighted in red from image A noted above.
The GCaMP6f fluorescent traces were then extracted from the processed
video for each ROI and normalized based on the average and maximal
values for each for all subsequent analysis (see methods). These one
dimensional traces were then used to draw comparisons across trials and
for comparisons to other ROIs. Each ROI showed dynamic features ranging
from sparse activity to highly active (2C) ROIs that match in color the
corresponding ROIs shown in figure 2B over a 1000 second window. ROIs
are normalized to their mean activity level and then scaled from the
mean value to their max value from the entire recording session. (2D)
Activity from a representative ROI over a 50 second time window from the
bottom trace shown in figure 2C. Individual ROIs can be dynamic showing
periods of low signal or high activity over brief time intervals. i and
iv represent periods of no activity with ii representing a first level
of activity and iii representing presumably summed activity that reach
maximal measured intensity (100%).

## Figure 3: ## 

[]{#_ENREF_1 .anchor}

[]{#_ENREF_2 .anchor}

[]{#_ENREF_3 .anchor}

[]{#_ENREF_4 .anchor}

[]{#_ENREF_5 .anchor}

[]{#_ENREF_6 .anchor}

[]{#_ENREF_7 .anchor}

[]{#_ENREF_8 .anchor}

[]{#_ENREF_9 .anchor}

[]{#_ENREF_10 .anchor}

[]{#_ENREF_11 .anchor}

[]{#_ENREF_12 .anchor}

[]{#_ENREF_13 .anchor}

[]{#_ENREF_14 .anchor}

[]{#_ENREF_15 .anchor}

[]{#_ENREF_16 .anchor}

[]{#_ENREF_17 .anchor}

[]{#_ENREF_18 .anchor}

[]{#_ENREF_19 .anchor}

[]{#_ENREF_20 .anchor}

[]{#_ENREF_21 .anchor}

[]{#_ENREF_22 .anchor}

[]{#_ENREF_23 .anchor}

[]{#_ENREF_24 .anchor}

[]{#_ENREF_25 .anchor}

[]{#_ENREF_26 .anchor}

[]{#_ENREF_27 .anchor}

[]{#_ENREF_28 .anchor}

[]{#_ENREF_29 .anchor}

[]{#_ENREF_30 .anchor}

[]{#_ENREF_31 .anchor}

[]{#_ENREF_32 .anchor}

[]{#_ENREF_33 .anchor}

[]{#_ENREF_34 .anchor}

[]{#_ENREF_35 .anchor}

[]{#_ENREF_36 .anchor}

[]{#_ENREF_37 .anchor}

[]{#_ENREF_38 .anchor}

[]{#_ENREF_39 .anchor}

[]{#_ENREF_40 .anchor}

Andermann, M. L., A. M. Kerlin, et al. (2010). \"Chronic cellular
imaging of mouse visual cortex during operant behavior and passiveviewing.\" [Front Cell Neurosci]### ## 4 ## : 3.Barnes, C. A., B.
L. McNaughton, et al. (1983). \"Loss of place specificity in hippocampal
complex spike cells of senescent rat.\" [Neurobiol Aging]##### 4 ## (2): 113-119.Berger, T. W., P. C. Rinaldi, et al. (1983).
\"Single-unit analysis of different hippocampal cell types during
classical conditioning of rabbit nictitating membrane response.\" [JNeurophysiol]### ## 50 ## (5): 1197-1219.Chen, T. W., T. J.
Wardill, et al. (2013). \"Ultrasensitive fluorescent proteins forimaging neuronal activity.\" [Nature]### ## 499 ## (7458):
295-300.Dombeck, D. A., C. D. Harvey, et al. (2010). \"Functional
imaging of hippocampal place cells at cellular resolution during virtualnavigation.\" [Nat Neurosci]### ## 13 ## (11):
1433-1440.Eichenbaum, H., S. I. Wiener, et al. (1989). \"The
organization of spatial coding in the hippocampus: a study of neuralensemble activity.\" [J Neurosci]### ## 9 ## (8):
2764-2775.Gallese, V., L. Fadiga, et al. (1996). \"Action recognition inthe premotor cortex.\" [Brain]### ## 119 ( Pt 2) ## :
593-609.Ghosh, K. K., L. D. Burns, et al. (2011). \"Miniaturized
integration of a fluorescence microscope.\" [Nat Methods]##### 8 ## (10): 871-878.Glickfeld, L. L., M. L. Andermann, et al. (2013).
\"Cortico-cortical projections in mouse visual cortex are functionallytarget specific.\" [Nat Neurosci]### ## 16 ## (2): 219-226.Green,
J. T. and J. D. Arenos (2007). \"Hippocampal and cerebellar single-unit
activity during delay and trace eyeblink conditioning in the rat.\"[Neurobiol Learn Mem]### ## 87 ## (2): 269-284.Grinvald, A., E.
Lieke, et al. (1986). \"Functional architecture of cortex revealed by
optical imaging of intrinsic signals.\" [Nature]##### 324 ## (6095): 361-364.Gruart, A., M. D. Munoz, et al. (2006).
\"Involvement of the CA3-CA1 synapse in the acquisition of associativelearning in behaving mice.\" [J Neurosci]### ## 26 ## (4):
1077-1087.Hafting, T., M. Fyhn, et al. (2005). \"Microstructure of a
spatial map in the entorhinal cortex.\" [Nature]##### 436 ## (7052): 801-806.Hamel, E. J., B. F. Grewe, et al. (2015).
\"Cellular Level Brain Imaging in Behaving Mammals: An EngineeringApproach.\" [Neuron]### ## 86 ## (1): 140-159.Hattori, S., L.
Chen, et al. (2015). \"Robust hippocampal responsivity during retrieval
of consolidated associative memory.\" [Hippocampus]##### 25 ## (5): 655-669.Hopt, A. and E. Neher (2001). \"Highly nonlinear
photodamage in two-photon fluorescence microscopy.\" [BiophysJ]### ## 80 ## (4): 2029-2036.Huber, D., D. A. Gutnisky, et al.
(2012). \"Multiple dynamic representations in the motor cortex duringsensorimotor learning.\" [Nature]### ## 484 ## (7395):
473-478.Kishimoto, Y., K. Nakazawa, et al. (2006). \"Hippocampal CA3
NMDA receptors are crucial for adaptive timing of trace eyeblinkconditioned response.\" [J Neurosci]### ## 26 ## (5):
1562-1570.Levy, W. B., A. Sanyal, et al. (2005). \"The formation of
neural codes in the hippocampus: trace conditioning as a prototypical
paradigm for studying the random recoding hypothesis.\" [BiolCybern]### ## 92 ## (6): 409-426.MacDonald, C. J., S. Carrow, et
al. (2013). \"Distinct hippocampal time cell sequences represent odormemories in immobilized rats.\" [J Neurosci]### ## 33 ## (36):
14607-14616.McEchron, M. D. and J. F. Disterhoft (1997). \"Sequence of
single neuron changes in CA1 hippocampus of rabbits during acquisition
of trace eyeblink conditioned responses.\" [J Neurophysiol]##### 78 ## (2): 1030-1044.McEchron, M. D. and J. F. Disterhoft (1999).
\"Hippocampal encoding of non-spatial trace conditioning.\"[Hippocampus]### ## 9 ## (4): 385-396.McEchron, M. D., A. P.
Weible, et al. (2001). \"Aging and learning-specific changes in
single-neuron activity in CA1 hippocampus during rabbit trace eyeblinkconditioning.\" [J Neurophysiol]### ## 86 ## (4): 1839-1857.Modi,
M. N., A. K. Dhawale, et al. (2014). \"CA1 cell activity sequences
emerge after reorganization of network correlation structure duringassociative learning.\" [Elife]### ## 3 ## : e01982.Moyer, J. R.,
Jr., R. A. Deyo, et al. (1990). \"Hippocampectomy disrupts trace
eye-blink conditioning in rabbits.\" [Behav Neurosci]##### 104 ## (2): 243-252.Munera, A., A. Gruart, et al. (2001). \"Hippocampal
pyramidal cell activity encodes conditioned stimulus predictive value
during classical conditioning in alert cats.\" [JNeurophysiol]### ## 86 ## (5): 2571-2582.O\'Keefe, J. (1979). \"A
review of the hippocampal place cells.\" [Prog Neurobiol]##### 13 ## (4): 419-439.O\'Keefe, J. and J. Dostrovsky (1971). \"The
hippocampus as a spatial map. Preliminary evidence from unit activity inthe freely-moving rat.\" [Brain Res]### ## 34 ## (1):
171-175.Patterson, G. H. and D. W. Piston (2000). \"Photobleaching intwo-photon excitation microscopy.\" [Biophys J]### ## 78 ## (4):
2159-2162.Petreanu, L., D. A. Gutnisky, et al. (2012). \"Activity in
motor-sensory projections reveals distributed coding insomatosensation.\" [Nature]### ## 489 ## (7415): 299-303.Redish,
A. D., F. P. Battaglia, et al. (2001). \"Independence of firing
correlates of anatomically proximate hippocampal pyramidal cells.\" [JNeurosci]### ## 21 ## (5): RC134.Sakamoto, T., K. Takatsuki, et
al. (2005). \"Role of hippocampal NMDA receptors in trace eyeblinkconditioning.\" [Brain Res]### ## 1039 ## (1-2): 130-136.Schultz,
W., P. Dayan, et al. (1997). \"A neural substrate of prediction andreward.\" [Science]### ## 275 ## (5306): 1593-1599.Solomon, P. R.,
E. R. Vander Schaaf, et al. (1986). \"Hippocampus and trace conditioning
of the rabbit\'s classically conditioned nictitating membraneresponse.\" [Behav Neurosci]### ## 100 ## (5): 729-744.St-Pierre,
F., J. D. Marshall, et al. (2014). \"High-fidelity optical reporting of
neuronal electrical activity with an ultrafast fluorescent voltagesensor.\" [Nat Neurosci]### ## 17 ## (6): 884-889.Sun, X. R., A.
Badura, et al. (2013). \"Fast GCaMPs for improved tracking of neuronalactivity.\" [Nat Commun]### ## 4 ## : 2170.Tseng, W., R. Guan, et
al. (2004). \"Trace eyeblink conditioning is hippocampally dependent inmice.\" [Hippocampus]### ## 14 ## (1): 58-65.Weiss, C., M. A.
Kronforst-Collins, et al. (1996). \"Activity of hippocampal pyramidal
neurons during trace eyeblink conditioning.\" [Hippocampus]##### 6 ## (2): 192-209.Xu, N. L., M. T. Harnett, et al. (2012). \"Nonlinear
dendritic integration of sensory and motor input during an activesensing task.\" [Nature]### ## 492 ## (7428): 247-251.Ziv, Y., L.
D. Burns, et al. (2013). \"Long-term dynamics of CA1 hippocampal placecodes.\" [Nat Neurosci]### ## 16 ## (3): 264-266.
