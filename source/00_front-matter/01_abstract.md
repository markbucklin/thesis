# Abstract {.unnumbered}
Imaging of multiple cells has rapidly multiplied the rate of data acquisition as well as our knowledge of the complex dynamics within the mammalian brain.
The process of data acquisition has been dramatically enhanced with highly affordable, sensitive, genetically coded image sensors enable high-throughput detection of neural activity in intact animals.
Genetically encoded calcium sensors deliver a substantial boost in signal strength and in combination with equally critical advances in the size, speed, and sensitivity of image sensors available in scientific cameras enables high-throughput detection of neural activity in behaving animals using traditional wide-field fluorescence microscopy.
However, the tremendous increase in data flow presents challenges to processing, analysis, and storage of captured video, and prompts a reexamination of traditional routines used to process data in neuroscience and now demand improvements in both our hardware and software applications for processing, analyzing, and storing captured video.
This project demonstrates the ease with which a dependable and affordable wide-field fluorescence imaging system can be assembled and integrated with behavior control and monitoring system such as found in a typical neuroscience laboratory.
An Open-source MATLAB toolbox is employed to efficiently analyze and visualize large imaging data sets in a manner that is both interactive and fully automated.
This software package provides a library of image pre-processing routines optimized for batch-processing of continuous functional fluorescence video, and additionally automates a fast unsupervised ROI detection and signal extraction routine.
Further, an extension of this toolbox that uses GPU programming to process streaming video, enabling the identification, segmentation and extraction of neural activity signals on-line is described in which specific algorithms improve signal specificity and image quality at the singe cell level in a behaving animal.
This  project describes the strategic ingredients for transforming a large bulk flow of raw continuous video into proportionally informative images and knowledge.
The long-term goal is to improve image quality data analysis in a finite and manageable manner that becomes (perhaps) as elegant, unique, and chaotic as the human brain itself.

(alternative)
The latest generation of genetically encoded sensors emerged from molecular engineering labs are highly sensitive.
These -- combined with equally critical advances in the performance of affordable image sensor -- have been put to use in labs conducting research neuroscience research to enable high-throughput detection of neural activity in behaving animals using both multi-photon and traditional wide-field fluorescence microscopy.
Unfortunately, expanded sensing capability can generate a flow of data in proportions that challenge the standard procedures used to process, analyze, and store captured video.
The torrent can easily overwhelm and debilitate, even when applying the latest and greatest from our ever-expanding arsenal of cluster computing resources.
Sensing capabilities available to scientists, physicians and engineers will continue to grow exponentially, while traditional raw data storage and batch-processing routines will impose the same limits on throughput utilization.

The work presented here demonstrates the ease with which a dependable and affordable wide-field fluorescence imaging system can be assembled, and integrated with behavior control and monitoring system such as found in a typical neuroscience laboratory.
Application of standard image processing and computer vision routines demonstrates the remarkable value of such a system, but also highlights the woeful inability of standard batch processing routines to manage the volume of data available.
After describing a slew of marginally successful naive attempts to pre-shrink long streams of raw video data to more manageable proportions, a more likely plan is presented.

Here you will find the strategic ingredients to consider if your intent is to transform an abundant flow of raw data into proportionally informative knowledge.
Certainly, aggressive deployment of streamed computation on graphics processing hardware will be vital component, but not solely sufficient.
A likely solution will also recognize opportunities afforded by implementing performance-tuned data structures, modular and dynamically reconfigurable data processing elements, and graph oriented stream semantics coordinating data-flow.
