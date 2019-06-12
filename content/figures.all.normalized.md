---
autoEqnLabels: False
autoSectionLabels: True
ccsDelim: ','
ccsLabelSep: '---'
ccsTemplate: $$i$$$$ccsLabelSep$$$$t$$
chapDelim: '.'
chapters: True
chaptersDepth: 1
codeBlockCaptions: True
cref: True
crossrefYaml: 'pandoc-crossref.yaml'
eqnLabels: arabic
eqnPrefix:
- 'eq.'
- 'eqns.'
eqnPrefixTemplate: $$p$$ $$i$$
figLabels: arabic
figPrefix:
- 'fig.'
- 'figs.'
figPrefixTemplate: $$p$$ $$i$$
figureTemplate: $$figureTitle$$ $$i$$$$titleDelim$$ $$t$$
figureTitle: Figure
lastDelim: ','
linkReferences: True
listingTemplate: $$listingTitle$$ $$i$$$$titleDelim$$ $$t$$
listingTitle: Listing
listings: True
lofTitle: '# List of Figures'
lolTitle: '# List of Listings'
lotTitle: '# List of Tables'
lstLabels: arabic
lstPrefix:
- 'lst.'
- 'lsts.'
lstPrefixTemplate: $$p$$ $$i$$
nameInLink: False
numberSections: True
pairDelim: ','
rangeDelim: '\-'
refDelim: ','
refIndexTemplate: $$i$$$$suf$$
secHeaderTemplate: $$i$$$$secHeaderDelim$$$$t$$
secLabels: arabic
secPrefix:
- 'sec.'
- 'secs.'
secPrefixTemplate: $$p$$ $$i$$
sectionsDepth: 0
subfigGrid: True
subfigLabels: alpha a
subfigureChildTemplate: $$i$$
subfigureRefIndexTemplate: '$$i$$$$suf$$ ($$s$$)'
subfigureTemplate: '$$figureTitle$$ $$i$$$$titleDelim$$ $$t$$. $$ccs$$'
tableEqns: False
tableTemplate: $$tableTitle$$ $$i$$$$titleDelim$$ $$t$$
tableTitle: Table
tblLabels: arabic
tblPrefix:
- 'tbl.'
- 'tbls.'
tblPrefixTemplate: $$p$$ $$i$$
title: All Figures
titleDelim: ':'
---

-   [List of Figures](#sec:list-of-figures)
-   [1 Introduction: Background and Literature
    Review](#sec:introduction-background-and-literature-review)
-   [2 Neural Interface Construction: Fabrication, programming, and
    assembly of of an automated system to open the channel to your
    mouses
    mind.](#sec:neural-interface-construction-fabrication-programming-and-assembly-of-of-an-automated-system-to-open-the-channel-to-your-mouses-mind.)
    -   [Animal Tracking](#sec:animal-tracking)
        -   [Behavior Box](#sec:behavior-box)
        -   [Mouse in a Bowl](#sec:mouse-in-a-bowl)
        -   [Spherical Treadmill](#sec:spherical-treadmill)
        -   [Headplate Holder](#sec:headplate-holder)
        -   [Motion Sensors](#sec:motion-sensors)
-   [3 Neural Analytics: Computational considerations and approaches to
    manage the continuous flow of neural imaging data... and if not
    making sense of it, perhaps making use of
    it.](#sec:neural-analytics-computational-considerations-and-approaches-to-manage-the-continuous-flow-of-neural-imaging-data-and-if-not-making-sense-of-it-perhaps-making-use-of-it.)
    -   [Image Processing](#sec:image-processing)
        -   [Image Processing: Tonemapping and
            Filtering](#sec:image-processing-tonemapping-and-filtering)
-   [4 Discussion: Broader considerations for clinicians, engineers, and
    research scientists preparing to make use of an increasingly
    hyper-connected
    future](#sec:discussion-broader-considerations-for-clinicians-engineers-and-research-scientists-preparing-to-make-use-of-an-increasingly-hyper-connected-future)
-   [Appendix](#sec:appendix)

# List of Figures {#sec:list-of-figures .unnumbered}

\listoffigures

# 1 Introduction: Background and Literature Review {#sec:introduction-background-and-literature-review}

# 2 Neural Interface Construction: Fabrication, programming, and assembly of of an automated system to open the channel to your mouses mind. {#sec:neural-interface-construction-fabrication-programming-and-assembly-of-of-an-automated-system-to-open-the-channel-to-your-mouses-mind.}

## Animal Tracking {#sec:animal-tracking}

### Behavior Box {#sec:behavior-box}

![behaviorbox
schematic](img/behavior-box/task-schematic.jpg){width="50%"}

### Mouse in a Bowl {#sec:mouse-in-a-bowl}

::: {#fig:mouse-in-a-bowl .subfigures}
+:------------------:+:------------------:+:------------------:+---+
| ![a](img/animal-tr | ![b](img/animal-tr | ![c](img/animal-tr |
| acking/01raw.jpg){ | acking/02black-and | acking/03twoframes |
| width="100%"}      | -white.jpg){width= | .jpg){width="100%" |
|                    | "100%"}            | }                  |
+--------------------+--------------------+--------------------+---+
| ![d](img/animal-tr | ![e](img/animal-tr | ![f](img/animal-tr | ! |
| acking/07mousedata | acking/06mousedata | acking/08mousedata | [ |
| 1close.jpg){width= | 1.jpg){width="100% | 2.jpg){width="100% | g |
| "100%"}            | "}                 | "}                 | ] |
|                    |                    |                    | ( |
|                    |                    |                    | i |
|                    |                    |                    | m |
|                    |                    |                    | g |
|                    |                    |                    | / |
|                    |                    |                    | a |
|                    |                    |                    | n |
|                    |                    |                    | i |
|                    |                    |                    | m |
|                    |                    |                    | a |
|                    |                    |                    | l |
|                    |                    |                    | - |
|                    |                    |                    | t |
|                    |                    |                    | r |
|                    |                    |                    | a |
|                    |                    |                    | c |
|                    |                    |                    | k |
|                    |                    |                    | i |
|                    |                    |                    | n |
|                    |                    |                    | g |
|                    |                    |                    | / |
|                    |                    |                    | 0 |
|                    |                    |                    | 9 |
|                    |                    |                    | m |
|                    |                    |                    | o |
|                    |                    |                    | u |
|                    |                    |                    | s |
|                    |                    |                    | e |
|                    |                    |                    | d |
|                    |                    |                    | a |
|                    |                    |                    | t |
|                    |                    |                    | a |
|                    |                    |                    | 1 |
|                    |                    |                    | f |
|                    |                    |                    | i |
|                    |                    |                    | b |
|                    |                    |                    | e |
|                    |                    |                    | r |
|                    |                    |                    | o |
|                    |                    |                    | n |
|                    |                    |                    | 1 |
|                    |                    |                    | . |
|                    |                    |                    | j |
|                    |                    |                    | p |
|                    |                    |                    | g |
|                    |                    |                    | ) |
|                    |                    |                    | { |
|                    |                    |                    | w |
|                    |                    |                    | i |
|                    |                    |                    | d |
|                    |                    |                    | t |
|                    |                    |                    | h |
|                    |                    |                    | = |
|                    |                    |                    | " |
|                    |                    |                    | 1 |
|                    |                    |                    | 0 |
|                    |                    |                    | 0 |
|                    |                    |                    | % |
|                    |                    |                    | " |
|                    |                    |                    | } |
+--------------------+--------------------+--------------------+---+

Figure 2.1: Automated animal Tracking for "Mouse in a bowl" type
experiments. a --- Raw frame of video being tacked, b --- Area of
detected mouse, c --- Overlay of 3 consecutive frames showing movement
of mouse between each, d --- video overlay showing tracked points, e ---
video overlay showing tracked points, f --- video overlay showing
tracked points, g --- video overlay showing tracked points
:::

### Spherical Treadmill {#sec:spherical-treadmill}

::: {#fig:spherical-tradmill .subfigures}
+:------------------:+:------------------:+:------------------:+
| ![a](img/spherical | ![b](img/spherical | ![c](img/spherical |
| -treadmill-VR/01-t | -treadmill-water-d | -treadmill-water-d |
| readmill-mouse-run | elivery/01-water-p | elivery/03-water-d |
| ning.jpg){width="1 | ort.jpg){width="10 | elivery-zoom.jpg){ |
| 00%"}              | 0%"}               | width="100%"}      |
+--------------------+--------------------+--------------------+

Figure 2.2: Spherical treadmill. a --- 01-treadmill-mouse-running, b ---
01-water-port, c --- 03-water-delivery-zoom
:::

### Headplate Holder {#sec:headplate-holder}

::: {#fig:headplate-holder .subfigures}
+:------------------:+:------------------:+:------------------:+
| ![a](img/headplate | ![b](img/headplate | ![c](img/headplate |
| -holder/photo-fron | -holder/photo-top. | -holder/photo-bott |
| t.jpg){width="100% | jpg){width="100%"} | om.jpg){width="100 |
| "}                 |                    | %"}                |
+--------------------+--------------------+--------------------+

Figure 2.3: Headplate holder. a --- front, b --- top, c --- bottom
:::

### Motion Sensors {#sec:motion-sensors}

::: {#fig:motion-sensors>

![01-motion-sensors-installed](img/spherical-treadmill-motion-sensors/01-motion-sensors-installed.jpg){ width=30% }
![02-motion-sensors](img/spherical-treadmill-motion-sensors/02-motion-sensors.jpg){ width=30% }
![Striatum_Figure2](img/spherical-treadmill-motion-sensors/Striatum_Figure2.png){ width=30% }

Motion sensors
</div>


## Microscopes

### Microscope Construction
<div id= .subfigures fig:widefield-microscope=""}
+:---------------------------------:+---+---+
| ![a](img/microscope/widefield_mic |
| roscope_diagram.png){width="100%" |
| }                                 |
+-----------------------------------+---+---+
| ![b](img/microscope/setup1.jpg){w | ! |
| idth="100%"}                      | [ |
|                                   | c |
|                                   | ] |
|                                   | ( |
|                                   | i |
|                                   | m |
|                                   | g |
|                                   | / |
|                                   | m |
|                                   | i |
|                                   | c |
|                                   | r |
|                                   | o |
|                                   | s |
|                                   | c |
|                                   | o |
|                                   | p |
|                                   | e |
|                                   | / |
|                                   | s |
|                                   | e |
|                                   | t |
|                                   | u |
|                                   | p |
|                                   | 2 |
|                                   | . |
|                                   | j |
|                                   | p |
|                                   | g |
|                                   | ) |
|                                   | { |
|                                   | w |
|                                   | i |
|                                   | d |
|                                   | t |
|                                   | h |
|                                   | = |
|                                   | " |
|                                   | 1 |
|                                   | 0 |
|                                   | 0 |
|                                   | % |
|                                   | " |
|                                   | } |
+-----------------------------------+---+---+
| ![d](img/microscope/setup3-front. | ! | ! |
| jpg){width="100%"}                | [ | [ |
|                                   | e | f |
|                                   | ] | ] |
|                                   | ( | ( |
|                                   | i | i |
|                                   | m | m |
|                                   | g | g |
|                                   | / | / |
|                                   | m | m |
|                                   | i | i |
|                                   | c | c |
|                                   | r | r |
|                                   | o | o |
|                                   | s | s |
|                                   | c | c |
|                                   | o | o |
|                                   | p | p |
|                                   | e | e |
|                                   | / | / |
|                                   | s | s |
|                                   | e | e |
|                                   | t | t |
|                                   | u | u |
|                                   | p | p |
|                                   | 3 | 3 |
|                                   | - | - |
|                                   | c | s |
|                                   | l | i |
|                                   | o | d |
|                                   | s | e |
|                                   | e | . |
|                                   | u | j |
|                                   | p | p |
|                                   | . | g |
|                                   | j | ) |
|                                   | p | { |
|                                   | g | w |
|                                   | ) | i |
|                                   | { | d |
|                                   | w | t |
|                                   | i | h |
|                                   | d | = |
|                                   | t | " |
|                                   | h | 1 |
|                                   | = | 0 |
|                                   | " | 0 |
|                                   | 1 | % |
|                                   | 0 | " |
|                                   | 0 | } |
|                                   | % |   |
|                                   | " |   |
|                                   | } |   |
+-----------------------------------+---+---+
| ![g](img/microscope/setup4-front. | ! | ! |
| jpg){width="100%"}                | [ | [ |
|                                   | h | i |
|                                   | ] | ] |
|                                   | ( | ( |
|                                   | i | i |
|                                   | m | m |
|                                   | g | g |
|                                   | / | / |
|                                   | m | m |
|                                   | i | i |
|                                   | c | c |
|                                   | r | r |
|                                   | o | o |
|                                   | s | s |
|                                   | c | c |
|                                   | o | o |
|                                   | p | p |
|                                   | e | e |
|                                   | / | / |
|                                   | s | s |
|                                   | e | e |
|                                   | t | t |
|                                   | u | u |
|                                   | p | p |
|                                   | 4 | 4 |
|                                   | - | - |
|                                   | c | s |
|                                   | l | i |
|                                   | o | d |
|                                   | s | e |
|                                   | e | . |
|                                   | u | j |
|                                   | p | p |
|                                   | . | g |
|                                   | j | ) |
|                                   | p | { |
|                                   | g | w |
|                                   | ) | i |
|                                   | { | d |
|                                   | w | t |
|                                   | i | h |
|                                   | d | = |
|                                   | t | " |
|                                   | h | 1 |
|                                   | = | 0 |
|                                   | " | 0 |
|                                   | 1 | % |
|                                   | 0 | " |
|                                   | 0 | } |
|                                   | % |   |
|                                   | " |   |
|                                   | } |   |
+-----------------------------------+---+---+

Figure 2.4: Widefield fluorescence microscope. a --- schamatic showing
relation of microscope and mouse on spherical treadmill, b --- setup1, c
--- setup2, d --- setup3-front, e --- setup3-closeup, f --- setup3-side,
g --- setup4-front, h --- setup4-closeup, i --- setup4-side
:::

# 3 Neural Analytics: Computational considerations and approaches to manage the continuous flow of neural imaging data... and if not making sense of it, perhaps making use of it. {#sec:neural-analytics-computational-considerations-and-approaches-to-manage-the-continuous-flow-of-neural-imaging-data-and-if-not-making-sense-of-it-perhaps-making-use-of-it.}

## Image Processing {#sec:image-processing}

### Image Processing: Tonemapping and Filtering {#sec:image-processing-tonemapping-and-filtering}

![Screenshot\_20150608180058](img/sw-gui-interactive-parameter-selection-homomorphic-filter/Screenshot_20150608180058.png){width="50%"}

![motion
Correction](img/sw-fluopro/motion_correction_sample.png){width="50%"}

![feature
generation](img/sw-video-processing-feature-generation.png){width="50%"}

![Pixel features useful for segmentation](img/2.png){width="50%"}

![sw-video-processing-feature-pointwise-mutual-information](img/sw-video-processing-feature-pointwise-mutual-information.png){width="50%"}

![pixel statistics](img/sw-sequence-bw.png){width="50%"}

![sw-video-processing-spatially-vs-temporally-adaptive-filter](img/sw-video-processing-spatially-vs-temporally-adaptive-filter.png){width="50%"}

![trgb](vid/trgb-013.gif){width="50%"}

![central
moments](img/sw-video-statistics/statistics_of_128_frames_contrast_enhanced.jpg){width="50%"}

# 4 Discussion: Broader considerations for clinicians, engineers, and research scientists preparing to make use of an increasingly hyper-connected future {#sec:discussion-broader-considerations-for-clinicians-engineers-and-research-scientists-preparing-to-make-use-of-an-increasingly-hyper-connected-future}

# Appendix {#sec:appendix .unnumbered}
