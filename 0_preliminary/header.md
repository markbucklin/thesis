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

**Preface**

I have structured this document to roughly coincide with a chronological
account of 6 years spent in a neuro-oriented biomedical engineering lab.
My role in the lab was centered around exploratory device design and
development, mostly targeting application in neuroscience research, with
intended users being neuroscientist colleagues. One of the lab's most
remarkable assets is the breadth and diversity of its constituents in
terms of their skills and experience, both within and between the
engineering/development and the science/medical sides of the lab. All
efforts stood to benefit from the close proximity to skilled colleagues,
most notably for the complementary guide and provide roles that assisted
the development process of new devices and the experiments they were
intended for.

My initial experience in optoelectronic device development was as an
undergrad at Columbia University where I was advised by Elizabeth
Hillman, and developed a device that combined thermography and
near-infrared spectroscopy in a portable and inexpensive device intended
to provide early detection of adverse neoplastic changes through at-home
daily monitoring, particularly targeting use by patients with high-risk
for breast cancer.

I then went to the Das Lab where I developed macroscopic imaging systems
used for intrinsic imaging in the visual cortex of awake primates.

As a MD/PhD student, I attempt to maintain a potential to adapt the
end-products of each development for clinical applicability.

The story presented here is rather unusual in that success precedes
failure. The volume of tangible presentable results is greatest toward
the beginning stages of the work described here. This unusual inversion
is what make this story worth hearing, however. Thank you for taking the
time to read this. I hope that at least the technical information
provided herein, if not the procedural insight, is valuable in your
current or future endeavors.

**Table of Contents**

Abstract

Preface

List of Abbreviations

Chapter 1: Development of a library of adaptable software that enables
neuroscientists to acquire, process, analyze, and visualize large
volumes of fluorescence imaging data from awake behaving animals.

1.1 Introduction

1.1.1 Procedures for Calcium Imaging

1.1.2 Computer Software Environments for Image Processing

1.1.3 Computational Resources for Processing Large Data Sets

1.2 Method and Approach

1.2.1 Image Pre-processing: Contrast Enhancement and Motion Correction

1.2.2 Region of Interest (ROI) identification & segmentation:

1.2.3 Region of Interest (ROI) merging:

1.2.4 Visualization

1.2.5 Predicting Activation State & Assessing Network Activity

1.2.6 Parallel Processing

1.2.7 Managing Continuity

Chapter 2: Extension of the software for continuous real-time processing
on a GPU.

2.1 Introduction

2.2 Method and Approach

2.2.1 Benchmarking & General Performance

2.2.2 Buffered Operations

2.2.3 Image Pre-Processing & Motion Correction

2.2.4 Sequential Statistics

2.2.5 Non-Stationarity & Differential Moments

2.2.6 Surface Classification: Peaks, Edges, Curvature

2.2.7 Online Cell Segmentation & Tracking

2.2.8 Signal Extraction from Subcellular Compartments

2.2.9 User Interface for Parameter Tuning

Bibliography

Vita

List of Tables (required, if any)

List of Figures (required, if any)

List of Illustrations or Schemes (required, if any)



**Chapter 1: Development of a library of adaptable software that enables
neuroscientists to acquire, process, analyze, and visualize large
volumes of fluorescence imaging data from awake behaving animals.**
