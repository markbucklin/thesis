---
author: Mark Bucklin
title: Development & Application of a Closed-Loop Continuous Optical Neural Interface
date: April 13, 2017
abstract: |
The latest generation of genetically encoded sensors emerged from
molecular engineering labs are highly sensitive. These -  combined with
equally critical advances in the performance of affordable image sensor
-- have been put to use in labs conducting research neuroscience
research to enable high-throughput detection of neural activity in
behaving animals using both multi-photon and traditional wide-field
fluorescence microscopy. Unfortunately, expanded sensing capability can
generate a flow of data in proportions that challenge the standard
procedures used to process, analyze, and store captured video. The
torrent can easily overwhelm and debilitate, even when applying the
latest and greatest from our ever-expanding arsenal of cluster computing
resources. Sensing capabilities available to scientists, physicians and
engineers will continue to grow exponentially, while traditional raw
data storage and batch-processing routines will impose the same limits
on throughput utilization.

The work presented here demonstrates the ease with which a dependable
and affordable wide-field fluorescence imaging system can be assembled,
and integrated with behavior control and monitoring system such as found
in a typical neuroscience laboratory. Application of standard image
processing and computer vision routines demonstrates the remarkable
value of such a system, but also highlights the woeful inability of
standard batch processing routines to manage the volume of data
available. After describing a slew of marginally successful naive
attempts to pre-shrink long streams of raw video data to more manageable
proportions, a more likely plan is presented.

Here you will find the strategic ingredients to consider if your intent
is to transform an abundant flow of raw data into proportionally
informative knowledge. Certainly, aggressive deployment of streamed
computation on graphics processing hardware will be vital component, but
not solely sufficient. A likely solution will also recognize
opportunities afforded by implementing performance-tuned data
structures, modular and dynamically reconfigurable data processing
elements, and graph oriented stream semantics coordinating data-flow.


fontsize: 12pt
linestretch: 1.5
toc-depth: 2
lof: True
lot: True

numbersections: true
header-includes:
    - \usepackage{appendix}
    - \usepackage{caption}
	- \usepackage{float}
\numberwithin{figure}{section}
\numberwithin{table}{section}
\pagenumbering{arabic}
\setstretch{1}
\setlength{\parskip}{9pt}
<!-- \captionsetup[table]{labelformat=empty} -->

...





