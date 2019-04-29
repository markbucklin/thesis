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
