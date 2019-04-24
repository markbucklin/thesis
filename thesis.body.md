
- [Forward {.unnumbered}](#forward-unnumbered)
- [Abstract {.unnumbered}](#abstract-unnumbered)
- [Introduction {.unnumbered}](#introduction-unnumbered)
  - [Optical Imaging of Neural Activity](#optical-imaging-of-neural-activity)
  - [Procedures for Calcium Imaging](#procedures-for-calcium-imaging)
  - [Computer Software Environments for Image Processing](#computer-software-environments-for-image-processing)
  - [Computational Resources for Processing Large Data Sets](#computational-resources-for-processing-large-data-sets)
- [Project Prologue {#sec:project-prologue}](#project-prologue-secproject-prologue)
  - [Neuroscience Technology Development Background {#sec:neuroscience-technology-development-background}](#neuroscience-technology-development-background-secneuroscience-technology-development-background)
  - [Behavior Box {#sec:behavior-box}](#behavior-box-secbehavior-box)
    - [IR Touchscreen {#sec:ir-touchscreen}](#ir-touchscreen-secir-touchscreen)
    - [FrameSynx Toolbox {#sec:framesynx-toolbox}](#framesynx-toolbox-secframesynx-toolbox)
    - [Data File {#sec:data-file}](#data-file-secdata-file)
  - [Animal Tracking {#sec:animal-tracking}](#animal-tracking-secanimal-tracking)
    - [Using Computer Vision to track Position and Orientation {#sec:using-computer-vision-to-track-position-and-orientation}](#using-computer-vision-to-track-position-and-orientation-secusing-computer-vision-to-track-position-and-orientation)
  - [Spherical Treadmill & Virtual-Reality](#spherical-treadmill--virtual-reality)
    - [Treadmill contstruction](#treadmill-contstruction)
      - [Figure: {#spherical-treadmill}](#figure-spherical-treadmill)
    - [Water Delivery](#water-delivery)
      - [Figure: {#water-delivery}](#figure-water-delivery)
    - [Motion Sensors](#motion-sensors)
      - [Generic USB Computer Mouse with Minimal Linux](#generic-usb-computer-mouse-with-minimal-linux)
      - [Navigation Sensor Chip with Arduino](#navigation-sensor-chip-with-arduino)
      - [Figure: {#motion-sensors}](#figure-motion-sensors)
  - [Closed-Loop Diffuse Optogenetic Neuromodulation](#closed-loop-diffuse-optogenetic-neuromodulation)
    - [Background](#background)
    - [Project Plan](#project-plan)
      - [Design a novel adaptive neuromodulation platform for closed loop control of neural activities {#sec:f31-aim1}](#design-a-novel-adaptive-neuromodulation-platform-for-closed-loop-control-of-neural-activities-secf31-aim1)
      - [Implement a library of closed loop modulation protocols with machine-learning algorithms {#sec:f31-aim2}](#implement-a-library-of-closed-loop-modulation-protocols-with-machine-learning-algorithms-secf31-aim2)
      - [Systematically evaluate the neural circuit mechanisms underlying DBS therapeutic effect on PD {#sec:f31-aim3}](#systematically-evaluate-the-neural-circuit-mechanisms-underlying-dbs-therapeutic-effect-on-pd-secf31-aim3)
    - [Significance](#significance)
      - [Justification for This Approach](#justification-for-this-approach)
      - [Shortcomings](#shortcomings)
    - [Research Design and Methods](#research-design-and-methods)
      - [Neural Interface](#neural-interface)
      - [LEDs](#leds)
      - [Figure: PCB schematic for head-mounted carbon fiber electrode array {#pcb-top}](#figure-pcb-schematic-for-head-mounted-carbon-fiber-electrode-array-pcb-top)
      - [Electrophysiology](#electrophysiology)
      - [Front-end Digitization](#front-end-digitization)
      - [Signal Filtering, LFP and MUA](#signal-filtering-lfp-and-mua)
      - [Input/Output](#inputoutput)
      - [Closed-loop State Estimation and Adaptive Neuromodulation](#closed-loop-state-estimation-and-adaptive-neuromodulation)
      - [Generation and Evaluation of Stimulus Paradigm](#generation-and-evaluation-of-stimulus-paradigm)
      - [Machine-Learning & Optimization](#machine-learning--optimization)
      - [Identification of Neural State](#identification-of-neural-state)
      - [Stimulus Sequence Generation](#stimulus-sequence-generation)
      - [Stimulus Optimization](#stimulus-optimization)
    - [Systematic evaluation of potential DBS targets and mechanisms in PD mouse model:](#systematic-evaluation-of-potential-dbs-targets-and-mechanisms-in-pd-mouse-model)
      - [Metrics of Behavior](#metrics-of-behavior)
- [Microscopy 1](#microscopy-1)
  - [Background: Brain Imaging and Microscopy in Neuroscience](#background-brain-imaging-and-microscopy-in-neuroscience)
  - [Fluorescent Proteins Background](#fluorescent-proteins-background)
    - [Fluorescence Microscope Types Background](#fluorescence-microscope-types-background)
    - [Widefield Microscope COnfiguration](#widefield-microscope-configuration)
    - [Filters](#filters)
    - [Lenses](#lenses)
    - [Excitation](#excitation)
    - [Emission](#emission)
    - [Emitted Light Collection and Image Formation (emission/collection)](#emitted-light-collection-and-image-formation-emissioncollection)
    - [Microscopy and Functional Imaging Two core innovations in available](#microscopy-and-functional-imaging-two-core-innovations-in-available)
  - [Brain Imaging Awake Animals](#brain-imaging-awake-animals)
  - [Brain Regions](#brain-regions)
  - [Analysis](#analysis)
  - [Cameras for Widefield Microscopy](#cameras-for-widefield-microscopy)
    - [Accelerated Sensor improvement](#accelerated-sensor-improvement)
      - [Sensor Size](#sensor-size)
      - [Read noise and Speed](#read-noise-and-speed)
      - [Interfaces: Connection](#interfaces-connection)
      - [Interfaces: Protocol](#interfaces-protocol)
  - [Computer Workstation](#computer-workstation)
    - [Part Selection and Assembly](#part-selection-and-assembly)
    - [Configuration](#configuration)
    - [Package Managment](#package-managment)
    - [Development Environment](#development-environment)
  - [Head-Fixation Apparatus for Mice](#head-fixation-apparatus-for-mice)
- [Pipeline overview](#pipeline-overview)
  - [phases](#phases)
    - [preprocessing](#preprocessing)
      - [time series analysis](#time-series-analysis)
      - [spatial signal deconvolution (unmixing)](#spatial-signal-deconvolution-unmixing)
    - [signal localization and extraction](#signal-localization-and-extraction)
    - [active signal analysis](#active-signal-analysis)
      - [independent cellular activity measures](#independent-cellular-activity-measures)
      - [network analysis](#network-analysis)
  - [Computing cost:](#computing-cost)
  - [Storage cost:](#storage-cost)
- [Image Processing](#image-processing)
- [Procedures for Calcium Imaging](#procedures-for-calcium-imaging-1)
- [Computer Software Environments for Image Processing](#computer-software-environments-for-image-processing-1)
- [Computational Resources for Processing Large Data Sets](#computational-resources-for-processing-large-data-sets-1)
- [Method and Approach](#method-and-approach)
- [Image Pre-processing: Contrast Enhancement and Motion Correction](#image-pre-processing-contrast-enhancement-and-motion-correction)
- [Region of Interest (ROI) identification & segmentation:](#region-of-interest-roi-identification--segmentation)
- [Region of Interest (ROI) merging:](#region-of-interest-roi-merging)
- [Visualization](#visualization)
- [Predicting Activation State & Assessing Network Activity](#predicting-activation-state--assessing-network-activity)
- [Parallel Processing](#parallel-processing)
- [Managing Continuity -->](#managing-continuity)
  - [Procedures for Calcium Imaging](#procedures-for-calcium-imaging-2)
    - [Computer Software Environments for Image Processing](#computer-software-environments-for-image-processing-2)
    - [Computational Resources for Processing Large Data Sets](#computational-resources-for-processing-large-data-sets-2)
  - [Methods and Approach](#methods-and-approach)
    - [Image Pre-processing: Contrast Enhancement and Motion Correction](#image-pre-processing-contrast-enhancement-and-motion-correction-1)
    - [Region of Interest (ROI) identification & segmentation](#region-of-interest-roi-identification--segmentation)
    - [Region of Interest (ROI) merging](#region-of-interest-roi-merging)
    - [Visualization](#visualization-1)
    - [Predicting Activation State & Assessing Network Activity](#predicting-activation-state--assessing-network-activity-1)
    - [Parallel Processing](#parallel-processing-1)
    - [Managing Continuity](#managing-continuity)
      - [Computing Power and Connectivity](#computing-power-and-connectivity)
      - [Image Processing](#image-processing-1)
      - [Motion Correction Two approaches to find displacement](#motion-correction-two-approaches-to-find-displacement)
      - [Spatially Homogeneous phase correlation](#spatially-homogeneous-phase-correlation)
      - [Image Enhancement](#image-enhancement)
      - [Feature Extraction](#feature-extraction)
      - [Acceleration and Optimization Procedures for Online Video Processing](#acceleration-and-optimization-procedures-for-online-video-processing)
      - [Incremental Update of Statistics](#incremental-update-of-statistics)
        - [central moments](#central-moments)
        - [Extract Features](#extract-features)
      - [Simple Processing on GPU](#simple-processing-on-gpu)
        - [Alternative Libraries](#alternative-libraries)
    - [Choice of Interface](#choice-of-interface)
      - [Procedural Framework: Pipes, Streams, & Graphs](#procedural-framework-pipes-streams--graphs)
        - [Concurrency: Parallel = Performance?](#concurrency-parallel--performance)
        - [Scheduling](#scheduling)
        - [Adaptive](#adaptive)
      - [Choice of Operations](#choice-of-operations)
      - [Motion Correction](#motion-correction)
        - [Motion Compensation & Interpolation](#motion-compensation--interpolation)
- [Microscopy 2](#microscopy-2)
  - [Construction](#construction)
    - [Standards](#standards)
  - [Multispectral Imaging](#multispectral-imaging)
    - [Filter Selection](#filter-selection)
    - [Lenses](#lenses-1)
    - [Mechanics and Positioning](#mechanics-and-positioning)
  - [Electronics](#electronics)
    - [Photosensors](#photosensors)
  - [Cameras](#cameras)
    - [Scientific CMOS (sCMOS)](#scientific-cmos-scmos)
    - [Data-Transfer (Camera Interfaces)](#data-transfer-camera-interfaces)
  - [Image Acquisition](#image-acquisition)
  - [Image Data Management](#image-data-management)
  - [Sensors](#sensors)
- [Abstract](#abstract)
- [Introduction](#introduction)
- [Results](#results)
  - [Cranial Window **[System]{.smallcaps}**](#cranial-window-systemsmallcaps)
    - [Headplate](#headplate)
    - [Chamber](#chamber)
    - [Optical Insert](#optical-insert)
  - [Installation and Usage](#installation-and-usage)
  - [Evaluation of System Performance](#evaluation-of-system-performance)
    - [Experimental Batches](#experimental-batches)
    - [Sustained Optical Quality Extended over a Year](#sustained-optical-quality-extended-over-a-year)
    - [Direct Observation of Cranial Chamber](#direct-observation-of-cranial-chamber)
    - [In vivo Tracking of Transplanted Stem Cells over Long Term](#in-vivo-tracking-of-transplanted-stem-cells-over-long-term)
  - [Adaptability](#adaptability)
- [Discussion](#discussion)
- [Materials and Methods](#materials-and-methods)
  - [Device development and fabrication](#device-development-and-fabrication)
  - [Window casting procedure](#window-casting-procedure)
  - [Surgical procedures](#surgical-procedures)
  - [Headplate installation and craniotomy](#headplate-installation-and-craniotomy)
  - [Optical insert attachment](#optical-insert-attachment)
  - [Window detachment and replacement](#window-detachment-and-replacement)
  - [Injection](#injection)
  - [Wide-field in vivo imaging and microscope setup](#wide-field-in-vivo-imaging-and-microscope-setup)
  - [Figure 1 Design, assembly and installation of the polymeric optical window.](#figure-1-design-assembly-and-installation-of-the-polymeric-optical-window)
  - [Figure 2 Flexible experimental timeline for surgery, injection and imaging.](#figure-2-flexible-experimental-timeline-for-surgery-injection-and-imaging)
  - [Figure 3 Extended optical clarity by biocompatible design of the system.](#figure-3-extended-optical-clarity-by-biocompatible-design-of-the-system)
- [Video Processing](#video-processing)
  - [Continuous Online Video Processing](#continuous-online-video-processing)
  - [Introduction](#introduction-1)
  - [Method and Approach](#method-and-approach-1)
    - [Benchmarking & General Performance](#benchmarking--general-performance)
    - [Buffered Operations](#buffered-operations)
    - [Image Pre-Processing & Motion Correction](#image-pre-processing--motion-correction)
    - [Sequential Statistics](#sequential-statistics)
    - [Non-Stationarity & Differential Moments](#non-stationarity--differential-moments)
    - [Surface Classification: Peaks, Edges, Curvature](#surface-classification-peaks-edges-curvature)
    - [Online Cell Segmentation & Tracking](#online-cell-segmentation--tracking)
    - [Signal Extraction from Subcellular Compartments](#signal-extraction-from-subcellular-compartments)
    - [User Interface for Parameter Tuning](#user-interface-for-parameter-tuning)
  - [Compression: as a Tool, a Goal, as an Explanation](#compression-as-a-tool-a-goal-as-an-explanation)
  - [Data Management](#data-management)
  - [Data Scaling](#data-scaling)
  - [Distributed Dataflow and Streaming](#distributed-dataflow-and-streaming)
    - [Language: Is MATLAB the best tool for this job?](#language-is-matlab-the-best-tool-for-this-job)
    - [Alternatives Languages](#alternatives-languages)
    - [Databases](#databases)
    - [Big Data](#big-data)
    - [Computational Models](#computational-models)
- [Information and Informativity](#information-and-informativity)
- [Discussion](#discussion-1)
  - [Points to Address](#points-to-address)

# Forward {.unnumbered}

I have structured this document to roughly coincide with a chronological account of 6 years spent in a neuro-oriented biomedical engineering lab. My role in the lab was centered around exploratory device design and development, mostly targeting application in neuroscience research, with intended users being neuroscientist colleagues. One of the lab's most remarkable assets is the breadth and diversity of its constituents in terms of their skills and experience, both within and between the engineering/development and the science/medical sides of the lab. All efforts stood to benefit from the close proximity to skilled colleagues, most notably for the complementary guide and provide roles that assisted the development process of new devices and the experiments they were intended for.

My initial experience in optoelectronic device development was as an undergrad at Columbia University where I was advised by Elizabeth Hillman, and developed a device that combined thermography and near-infrared spectroscopy in a portable and inexpensive device intended to provide early detection of adverse neoplastic changes through at-home daily monitoring, particularly targeting use by patients with high-risk for breast cancer. I then went to the Das Lab where I developed macroscopic imaging systems used for intrinsic imaging in the visual cortex of awake primates. As a MD/PhD student, I attempt to maintain a potential to adapt the end-products of each development for clinical applicability. The story presented here is rather unusual in that success precedes failure. The volume of tangible presentable results is greatest toward the beginning stages of the work described here. This unusual inversion is what make this story worth hearing, however. Thank you for taking the time to read this. I hope that at least the technical information provided herein, if not the procedural insight, is valuable in your current or future endeavors.

<!-- Every day my colleagues and I are surprised and amazed by the bizarre twists and turns we observe.  -->
<!-- Occasionally left bewildered, not quite capable --- or perhaps unwilling to recall --- the motivational catch phrase that is stamped and stamped again, the meat of the intro, and stamped again to bring discussion to an end... -->
# Abstract {.unnumbered}
The latest generation of genetically encoded sensors emerged from molecular engineering labs are highly sensitive. These -  combined with equally critical advances in the performance of affordable image sensor -- have been put to use in labs conducting research neuroscience research to enable high-throughput detection of neural activity in behaving animals using both multi-photon and traditional wide-field fluorescence microscopy. Unfortunately, expanded sensing capability can generate a flow of data in proportions that challenge the standard procedures used to process, analyze, and store captured video. The torrent can easily overwhelm and debilitate, even when applying the latest and greatest from our ever-expanding arsenal of cluster computing resources. Sensing capabilities available to scientists, physicians and engineers will continue to grow exponentially, while traditional raw data storage and batch-processing routines will impose the same limits on throughput utilization.

The work presented here demonstrates the ease with which a dependable and affordable wide-field fluorescence imaging system can be assembled, and integrated with behavior control and monitoring system such as found in a typical neuroscience laboratory. Application of standard image processing and computer vision routines demonstrates the remarkable value of such a system, but also highlights the woeful inability of standard batch processing routines to manage the volume of data available. After describing a slew of marginally successful naive attempts to pre-shrink long streams of raw video data to more manageable proportions, a more likely plan is presented.

Here you will find the strategic ingredients to consider if your intent is to transform an abundant flow of raw data into proportionally informative knowledge. Certainly, aggressive deployment of streamed computation on graphics processing hardware will be vital component, but not solely sufficient. A likely solution will also recognize opportunities afforded by implementing performance-tuned data structures, modular and dynamically reconfigurable data processing elements, and graph oriented stream semantics coordinating data-flow.
# Introduction {.unnumbered}

## Optical Imaging of Neural Activity

Optical techniques for observing neural activity have advanced recently owing to both an evolution of digital imaging technology, and the development of engineered proteins that act as fluorescent indicators of neural activity. Image sensors, like those found in scientific-CMOS (sCMOS) cameras are larger, faster, and more sensitive than what was previously available in science-grade cameras. Meanwhile, the latest generation of Genetically Encoded Calcium Indicators (GECIs), collectively called GCaMP6, reports fluctuations in neural activation with extremely high fidelity. This combination of developments enables neuroscientists to open a wider channel to the brain than previously possible -- using conventional epifluorescence microscopy techniques -- enabling simultaneous recording from hundreds to thousands of neurons. Expanding the fraction of the observable neurons in an interconnected network may provide insight into mechanistic properties of neural disease, or may lead to a better understanding of neural coding. Additionally, feeding a large set of neural response information to a machine learning algorithm in a neuroprosthetic application may provide improved predictive performance, even if the exact mechanism of prediction remains difficult to discern. However, a few major challenges currently prevent realization of the potential benefits that these new technologies offer:

1.  The increased size of raw data from a single imaging session can easily overwhelm the computational resources typically used to process similar but smaller sets of data.

2.  The accumulation of raw data on disk over multiple imaging sessions quickly exceeds the data-storage capacity of most lab-scale servers, forcing researchers to halt data collection to process and delete, a nightmare scenario for some.

3.  The experimental design and data analysis procedures that neuroscientists are familiar with applying for network activity data when there are 5 to 10 cells will produce highly biased spurious results, unless provided with many more stimulus-response repetitions, i.e. trials. The number of repeated trials sufficient for producing an accurate description of the neural response to any stimulus is on the order of 2^N^, where N is the number of neurons being measured.

The objective of this project is to establish procedures that can address these challenges, then use these procedures to evaluate the effect that expanding available neural response input has on performance of a closed-loop encoder. This closed-loop encoder will attempt to predict changes in motor state of a mouse running on a ball, using sensors on the ball to train the encoder. It will then use the predicted motor state to modulate motor state in another mouse using opsins. This can be thought of as a model neuroprosthetic whos function is to overcome dysfunction caused by pathologically disconnected brain areas, such as exists in Parkinson's disease (PD). The goal will be to increase synchronization of mice beyond chance, such that they tend to run together and rest together.

Below I provide some background on the general procedure for offline video processing. I also discuss some of the issues with carrying out these procedures on a large dataset, and the variety of approaches that I and others have attempted for dealing with the issue. I then introduce the streaming approach (i.e. Aim 2), which is capable of processing video during acquisition and extracting signals directly, saving relevant signals only and discarding or compressing the raw video. This approach relies on GPU programming, so I also provide some background on the application of graphics cards for computationally demanding tasks. Using a graphics card for programming in the MATLAB environment is also discussed.

<!-- Aim 1: Build a library of adaptable software that enables neuroscientists to acquire, process, analyze, and visualize large volumes of fluorescence imaging data from awake behaving animals. -->
Capturing wide-field fluorescence images at high spatial and temporal resolution enables us to measure functional dynamic changes in many cells within a large interconnected network. Extracting a measure for each cell in a way that preserves spatial and temporal continuity with uniform/unbiased sampling of the observed signal is achievable, but implementing a procedure to accomplish the task can be made difficult by a number of factors. One class of computer-vision procedure commonly applied to this task is image-segmentation (cell-segmentation in histology applications), a procedure that seeks to represent distinct objects in an image by association of each image pixel with one of any number of abstract objects, or with the background. A variety of algorithms exist for performing this operation efficiently on single images. Most methods can be extended to operate in a 3^rd^ dimension, applied to stacks of image frames to enable tracking cells at multiple depths, or equivalently over time.

However, motion induced by physiologic changes and animal movement necessitates alignment of all frames in the sequence. Moreover, the massive fluctuations in signal intensity from individual and spatially overlapping cells can breed unstable solutions for alignment and radically complicate cell identification routines by disrupting temporal continuity. Implementing a reliable procedure for identifying and tracking the same cells in each frame throughout the sequence thus becomes non-trivial.

## Procedures for Calcium Imaging

The general goal of processing image data from functional fluorescence imaging experiments is to restructure raw image data in a way that maps pixels in each image frame to distinct individual cells or subcellular components, called 'Regions-Of-Interest' (ROI). Pixel-intensity values from mapped pixels are typically then reduced by combination to single dimensional 'trace' time-series. These traces indicates the fluorescence intensity of an individual neuron over time, and the collection approximates the distinct activity of each and every neuron in the microscope's field of view. However, this task is made difficult by motion of the brain throughout the experiment, and also by the apparent overlap of cells in the image plane captured from the camera's 2-dimensional perspective. These issues can be partially mitigated with a few image pre-processing steps -- alignment of images to correct for motion being the most critical. These options are described in the Methods & Approaches section below. Most software packages geared specifically toward functional imaging implement either of two basic classes of pixel-&gt;cell mapping algorithms. One approach is to use image-segmentation routines for computer vision, which seeks to combine adjacent pixels into distinct spatially segregated regions representing objects in the image.

The other common approach is to perform an eigenvalue decomposition on the covariance matrix from a stack of image frames (also called spectral decomposition, or Principal Component Analysis, PCA), resulting in an assembly of basis vectors defining the weighting coefficients for each pixel. Multiplying the basis-vectors (i.e. "components") with all frames produces a one-dimensional trace for each component. The linear combination is similar to the weighted image-segmentation method in that it assigns fractional coefficients to pixels. However the procedure for computing the covariance matrix employed by PCA operates on as many pixels as are in the image, multiplying each with every other pixel -- a problem with *np^2^* complexity, where *p* is the number of pixels in the image. I mention these issues inherent to PCA not because this project will attempt to address them, but because this project was initiated following tremendous difficulty attempting to use PCA-based cell sorting methods with large datasets.

## Computer Software Environments for Image Processing

The widespread usage of MATLAB in neuroscience communities lends potential for greater usability and easier adaptation to software developed in this environment. While software development environments with a focus on "ease-of-use" have traditionally presumed crippling sacrifices to computational performance, this assumption is getting to be less accurate.

Standard programs include ImageJ, the built-in routines in MATLAB's Image Processing Toolbox, Mosaic from Inscopix, which is merely a compiled version of MATLAB routines which uses the MATLAB engine, Sci-Kits Image for Python, and a remarkable diversity of other applications. MATLAB is a commercial software development platform which is geared toward fast production and prototyping of data processing routines in a high-level programming language. It implements several core libraries (LINPACK, BLAS, etc.) that make multithreaded operations on matrix type data highly efficient. While MATLAB has traditionally been a considered the standard across neuroscience research labs, it was also well recognized that its performance was lacking for routines that aren't "vectorized", when compared to applications developed using lower-level languages like FORTRAN, C, and C++. Nevertheless, it remained in common use, and recent releases have added features that can drastically mitigate its performance issues, particularly through the development of a "Just-In-Time" compiler that automatically optimizes the deployment of computation accelerator resources for standard MATLAB functions. This feature enables code that performs repeated operations using for-loops or while-loops nearly as fast as equivalent code written in C. Additionally, code can be compiled into executable format using the Matlab Compiler toolbox, or used to generate equivalent C or C++ code using Matlab Coder.

## Computational Resources for Processing Large Data Sets

Routines for extracting the activity in each cell from a collection of raw imaging data rely on an ability to simultaneous access many pixels separated over space and time (and consequently separated on disk). For long recording sessions, however, the size of the collection of stored image data grows dramatically. This substantial increase in the size of data easily exceeds the capacity of system memory in the typical workstation computer available to researchers. Thus, performing the necessary processing routines using standard programs is often unfeasible.

Another popular approach to this challenge is the migration of processing routines to a cluster-based system. In this way image data can be distributed across many interconnected computer nodes capable of performing all locally restricted image processing procedures in parallel, then passing data to other nodes in the cluster for tasks that rely on comparisons made across time. Access to clusters capable of performing in this way has historically been restricted to those working in large universities or other large organization, and the diversity of cluster types is sizeable, with clusters often having very particular configuration requirements for implementing data processing jobs efficiently. These issues would pose some difficulty to the use and shared development of software libraries for image processing routines, although the growth of "cloud computing" services such as Amazon's EC2 and the Google Compute Engine, and also collaborative computing facilities like the  [Massachusetts Green High-Performance Computing Center](http://www.mghpcc.org) mitigate many of these issues. Additionally, efforts to produce a standardized interface for accessing and distributing data, and for managing computing resources across diverse computing environments have seen appreciable success. Apache's release of the open-source cluster computing framework, Hadoop, and a companion data-processing engine called [Spark](http://spark.apache.org/), has encouraged a massive growth in collaborative development projects, a consequently increased the availability of robust shared libraries for data processing in a variety of applications. The Spark API can be accessed using the open-source programming Python, and also using other languages like Java, Scala, or R. One project specifically geared for image processing of neural imaging data is the Thunder library, a Spark package released by the Freeman lab and developed in collaboration with a number of other groups at Janelia farm and elsewhere.

Many applications will find the recent improvements in accessibility and standardization make cluster computing an attractive and worthwhile option for processing a very large set of reusable data. However, this strategy would impose harsh limitations for a neuroscientist with a project that is continuously generating new data, as the time required to transfer entire imaging data sets across the internet may be prohibitive. Unfortunately, storage on the cloud is not so unlimited that it can manage an accumulated collection of imaging data generated at anything near the rate that sCMOS cameras are capable of producing. This rate imbalance is a central motivating issue for Aim 2 this project, and is discussed in more detail below.

<!-- Aim 2: Extend the software for continuous real-time processing on a GPU.  -->
<!-- TODO:repeated later (video-procesing section) -->
The current generation of sCMOS cameras can capture full-frame resolution video at either 30 fps or 100 fps, depending on the data interface between camera and computer (USB3.0 or CameraLink). At 16-bits per pixel and 2048x2048 pixels, the maximum data rate for the USB3.0 camera is 240 MB/s. Imaging sessions typically last 30-minutes or less. However, pixels are typically binned down 2x2, and frame rate often reduced; processing speed and storage constraints are the primary motivation for doing so. The effect of doubling resolution on processing time when using the graphics card is nearly negligible, however. By identifying ROIs online and extracting the traces of neural activity allows us to discard acquired images and instead store the traces only, or feed them into an encoder for online analysis.

Graphics Processing Units were traditionally developed for the consumer gaming market. They are optimized for the process which involves translating a continuous stream of information into a two-dimensional image format for transfer to a computer monitor. In the context of gaming, the stream of information received by a GPU describes the state of objects in a dynamic virtual environment, and is typically produced by a video game engine. These processors are highly optimized for this task. However, they are equally efficient at performing the same type of procedure in reverse -- reducing a stream of images to structured streams of information about dynamic objects in the image -- and thus are popular for video processing and computer vision applications.

Any GPU architecture will consist of a hierarchy of parallel processing elements. NVIDIA's CUDA architecture refers to the lowest level processing element as "CUDA Cores" and the highest level as "Symmetric Multiprocessors." Typically data is distributed across cores and multiprocessors by specifying a layout in C-code using different terminology, "threads" and "blocks." Blocks are then said to be organized in a "grid." Adapting traditional image processing or computer vision algorithms to run quickly on a GPU involves finding a way to distribute threads efficiently, ideally minimizimg communication between blocks.

MATLAB makes processing data using the GPU seemingly trivial by overloading a large number of built in functions. Performance varies, however, and often the fastest way to implement a routine is by writing a kernel-type subfunction -- written as if it operates on single (scalar) elements only -- that can be called on all pixels at once, or all pixel-subscripts, which the function can then use to retrieve the pixel value at the given subscript. The kernel-type function is compiled into a CUDA kernel the first time it's called, then repeated calls call the kernel directly, having minimal overhead. Calls go through the *arrayfun()* function.

Data transfers between system memory and graphics memory is often the major bottle-neck. Therefore, this operation is best performed only once. However, once data is on the GPU, many complex operations can be performed to extract information from the image, all while staying under the processing-time limit imposed by the frame-rate of the camera sending the images.

<!-- Aim 3: Detect motor states from extracted neural activity and apply to closed-loop neuromodulation. -->
The function of the brain is to translate/encode sensory input into neural output that actuates an effect that promotes survival of the organism or propagates to promote the survival of offspring (generation of a response). It does this by communicating input through interconnected neurons via converging and diverging connections which comprise the neural network. One way we study the brain is by testing and observing the properties of individual neurons and the response to changing conditions at the direct connections they form with others. Another way is by observing a collection of neurons and to measure their response to variable conditions in their external environment, either by recording or stimulating variations in sensory input, or measuring an organisms physical/behavioral response.

One might presume that the expansion of information provided by being able to measure activity from a larger proportion of cells in a network would make it easier to analyze stimulus-response type experiments and gain insight about underlying functional mechanisms. Unfortunately, the correlation and information theoretic procedures traditionally used to make these associations suffer from a systematic bias that grows exponentially with the number responses considered for each stimulus (i.e. the number of cells included). The number of trials necessary for overcoming this bias gets exponentially large, though methods do exist for bias correction, such as through shuffling/resampling tests.

A systems neuroscience experiment will benefit from online feedback in one or both of two ways:

1.  For an experiment that seeks to learn the neural response/pattern associated with a *specific* *stimulus*, it can inform the user whether the current number of trials -- i.e. repeated presentations of the stimulus -- will be sufficient for overcoming *limited sampling bias*. This could be done by testing pattern hypotheses online to subsets of the collected data and assessing their stability.

2.  If the intention of the experiment is to study neural coding in general, for which it's sufficient to have an *arbitrary stimulus*, then online pattern recognition feedback can aid in maximizing the information in the response about that stimulus, either by directing modification of the stimulus, or directing modification of the field-of-view.

Streaming processing addresses the issues of processing and storing for sufficient learning from large networks possible. Additionally, I propose a strategy in the methods section by which incorporating this online processing stream into stimulus-response-type experiments could help correct *limited sampling bias*, enabling neural coding analysis in large populations of neurons [@ince_presence_2009].

Overall, however, the third goal of this project will focus on the ability to use the expanded information made available by the first two project components to train an encoder that predicts intended motor states from one healthy mouse, and uses the predictions to direct neuromodulatory control of another mouse. This setup will simulate pathologic disconnection in a brain, and will test the ability to distinguish intention to start or stop running, and apply that in a way that performance is easily measureable.
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
## Cameras for Widefield Microscopy

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

![VR headplate holder in progress](/images/VR%20headplate%20holder%20in%20progress.PNG)
![VR headplate holder in progress3](/images/VR%20headplate%20holder%20in%20progress3.PNG)
![VR headplate holder in progress4](/images/VR%20headplate%20holder%20in%20progress4.PNG)
![head-fixed-mouse-stationary-front](/images/head-fixed-mouse-stationary-front.jpg)
![head-fixed-mouse-stationary-side](/images/head-fixed-mouse-stationary-side.jpg)
![headplate_holder_VR_v2](/images/headplate_holder_VR_v2.PDF)


# Pipeline overview


## phases

### preprocessing
Image filtering operations
Normalization
Motion estimation and compensation
Layer classification
  foreground/background
  Cell/neuropil/vessel


#### time series analysis
Prediction and factorization of temporal components/contaminants
Model:
  Unidirectional trend (sources...)
  Oscillatory ("seasonal")
  Unpredictable


#### spatial signal deconvolution (unmixing)

### signal localization and extraction
Segmentation of cells
Overlap and "disconnected" regions
Initial vs incremental cell identification

### active signal analysis
Signal statistics
  Shape and stability of probabilistic distribution
Pixel level vs cell level

#### independent cellular activity measures
Quality
Complexity
Spatial
Temporal

#### network analysis

## Computing cost:
  boundary analysis for iOS and config

## Storage cost:
  compression and imposed boundaries
# Image Processing

This section borrows from AIM-1 and AIM-2 of the prospectus.

<!-- # Introduction
# Procedures for Calcium Imaging
# Computer Software Environments for Image Processing
# Computational Resources for Processing Large Data Sets
# Method and Approach
# Image Pre-processing: Contrast Enhancement and Motion Correction
# Region of Interest (ROI) identification & segmentation:
# Region of Interest (ROI) merging:
# Visualization
# Predicting Activation State & Assessing Network Activity
# Parallel Processing
# Managing Continuity -->

## Procedures for Calcium Imaging

The general goal of processing image data from functional fluorescence imaging experiments is to restructure raw image data in a way that maps pixels in each image frame to distinct individual cells or subcellular components, called 'Regions-Of-Interest' (ROI). Pixel-intensity values from mapped pixels are typically then reduced by combination to single dimensional 'trace' time-series. These traces indicate the fluorescence intensity of an individual neuron over time, and the collection approximates the distinct activity of each and every neuron in the microscope's field of view. However, this task is made difficult by motion of the brain throughout the experiment, and also by the apparent overlap of cells in the image plane captured from the camera's 2-dimensional perspective. These issues can be partially mitigated with a few image pre-processing steps -- alignment of images to correct for motion being the most critical. These options are described in the Methods & Approaches section below. Most software packages geared specifically toward functional imaging implement either of two basic classes of pixel-&gt;cell mapping algorithms. One approach is to use image-segmentation routines for computer vision, which seeks to combine adjacent pixels into distinct spatially segregated regions representing objects in the image.

The other common approach is to perform an eigenvalue decomposition on the covariance matrix from a stack of image frames (also called spectral decomposition, or Principal Component Analysis, PCA), resulting in an assembly of basis vectors defining the weighting coefficients for each pixel. Multiplying the basis-vectors (i.e. "components") with all frames produces a one-dimensional trace for each component. The linear combination is similar to the weighted image-segmentation method in that it assigns fractional coefficients to pixels. However the procedure for computing the covariance matrix employed by PCA operates on as many pixels as are in the image, multiplying each with every other pixel -- a problem with np2 complexity, where p is the number of pixels in the image. I mention these issues inherent to PCA not because this project will attempt to address them, but because this project was initiated following tremendous difficulty attempting to use PCA-based cell sorting methods with large datasets.

### Computer Software Environments for Image Processing

The widespread usage of MATLAB in neuroscience communities lends potential for greater usability and easier adaptation to software developed in this environment. While software development environments with a focus on "ease-of-use" have traditionally presumed crippling sacrifices to computational performance, this assumption is getting to be less accurate.

Standard programs include ImageJ, the built-in routines in MATLAB's Image Processing Toolbox, Mosaic from Inscopix, which is merely a compiled version of MATLAB routines which uses the MATLAB engine, Sci-Kits Image for Python, and a remarkable diversity of other applications. MATLAB is a commercial software development platform which is geared toward fast production and prototyping of data processing routines in a high-level programming language. It implements several core libraries (LINPACK, BLAS, etc.) that make multithreaded operations on matrix type data highly efficient. While MATLAB has traditionally been a considered the standard across neuroscience research labs, it was also well recognized that its performance was lacking for routines that aren't "vectorized", when compared to applications developed using lower-level languages like FORTRAN, C, and C++. Nevertheless, it remained in common use, and recent releases have added features that can drastically mitigate its performance issues, particularly through the development of a "Just-In-Time" compiler that automatically optimizes the deployment of computation accelerator resources for standard MATLAB functions. This feature enables code that performs repeated operations using for-loops or while-loops nearly as fast as equivalent code written in C. Additionally, code can be compiled into executable format using the Matlab Compiler toolbox, or used to generate equivalent C or C++ code using Matlab Coder.

### Computational Resources for Processing Large Data Sets

Routines for extracting the activity in each cell from a collection of raw imaging data rely on an ability to simultaneous access many pixels separated over space and time (and consequently separated on disk). For long recording sessions, however, the size of the collection of stored image data grows dramatically. This substantial increase in the size of data easily exceeds the capacity of system memory in the typical workstation computer available to researchers. Thus, performing the necessary processing routines using standard programs is often unfeasible.

Another popular approach to this challenge is the migration of processing routines to a cluster-based system. In this way image data can be distributed across many interconnected computer nodes capable of performing all locally restricted image processing procedures in parallel, then passing data to other nodes in the cluster for tasks that rely on comparisons made across time. Access to clusters capable of performing in this way has historically been restricted to those working in large universities or other large organization, and the diversity of cluster types is sizeable, with clusters often having very particular configuration requirements for implementing data processing jobs efficiently. These issues would pose some difficulty to the use and shared development of software libraries for image processing routines, although the growth of "cloud computing" services such as Amazon's EC2 and the Google Compute Engine, and also collaborative computing facilities like the Massachusetts Green High-Performance Computing Center (http://www.mghpcc.org) mitigate many of these issues. Additionally, efforts to produce a standardized interface for accessing and distributing data, and for managing computing resources across diverse computing environments have seen appreciable success. Apache's release of the open-source cluster computing framework, Hadoop, and a companion data-processing engine called Spark (http://spark.apache.org/), has encouraged a massive growth in collaborative development projects, a consequently increased the availability of robust shared libraries for data processing in a variety of applications. The Spark API can be accessed using the open-source programming Python, and also using other languages like Java, Scala, or R. One project specifically geared for image processing of neural imaging data is the Thunder library, a Spark package released by the Freeman lab and developed in collaboration with a number of other groups at Janelia farm and elsewhere.

Many applications will find the recent improvements in accessibility and standardization make cluster computing an attractive and worthwhile option for processing a very large set of reusable data. However, this strategy would impose harsh limitations for a neuroscientist with a project that is continuously generating new data, as the time required to transfer entire imaging data sets across the internet may be prohibitive. Unfortunately, storage on the cloud is not so unlimited that it can manage an accumulated collection of imaging data generated at anything near the rate that sCMOS cameras are capable of producing. This rate imbalance is a central motivating issue for Aim 2 this project, and is discussed in more detail below.

## Methods and Approach

Image processing is performed offline using MATLAB software. The goal of this procedure is to reduce the raw image sequence to a collection of one-dimensional traces, where each trace indicates the fluorescence intensity of an individual neuron over time, and the collection approximates the distinct activity of each and every neuron in the microscope's field of view. We implement the process in 3 distinct stages as described below. The main novel contribution of this work is the efficient extension of segmented ROIs into the third dimension by clustering features of ROIs segmented separately in two dimensions. Online processing uses a similar approach, and the differences are explained in the next section.

### Image Pre-processing: Contrast Enhancement and Motion Correction

Alignment of each frame in the image sequence with all other frames is essential to the methods we use in subsequent steps for identifying and tracking cells over time. Thus, the goal of the first stage is to correct for any misalignment caused by movement of the brain relative to the microscope and camera.

Many algorithms for estimating and correcting image displacement exist and are well described in the medical imaging literature. We elected to use phase-correlation to estimate the induced motion in each frame, as we found this method to be highly stable, moderately accurate, and (most importantly) fast, especially when implemented in the frequency domain and using a decent graphics card.

Phase-correlation estimates the mean translational displacement between two frames, one being the template or "fixed" frame, and the other being the uncorrected or "moving" frame. In the spatial domain this is accomplished by computing the normalized cross-correlation, which implies a 2-dimensional convolution of large matrices. The equivalent operation in the frequency domain is a simple scalar dot-product of the discrete Fourier transforms of each image normalized by the square of the template, followed by the inverse Fourier transform. The intermediate result is the cross-correlation (or phase-correlation) matrix, which should have a peak in its center for correctly aligned images, or a peak near the center, the offset of which indicates the mean offset between the two images. This peak can be found with subpixel precision by interpolation to give a more accurate alignment, although at some moderate expense in computation time.

For the template image we used a moving average of previously aligned frames when processing frames sequentially, or alternatively a fixed mean of randomly sampled and sequentially aligned images from the entire set when processing files in parallel. The simplest way to perform this operation is to use the built-in MATLAB function normxcorr2, which makes optimization decisions based on image size and available hardware automatically. However, performance can be improved by tailoring the operation to your particular hardware and image size, i.e. using fft2 and ifft2 for large images and a good graphics card.

### Region of Interest (ROI) identification & segmentation

The ROI detection process used an adaptive threshold on the z-score of pixel intensity to reduce each frame to binary 1's and 0's (logical true or false). These binary frames were then processed using morphological operations to find and label connected components within each frame. For example, beginning with a z-score threshold of 1.5, all pixels that were more than 1.5 standard deviations above their mean were reduced to 1 (true), and all others reduced to 0 (false). Pixels reduced to 1 were often pixels overlying a cell that was significantly brighter during that frame due to activation of GCaMP. This initial threshold was adjusted up or down based on the number of non-zero pixels detected with each threshold. This was done to prevent spurious motion-induced shifts of the image frame from producing ROIs along high contrast borders. All morphological operations were performed using built-in MATLAB functions from the Image Processing Toolbox, which have fast parallel versions if the operation is run on a graphics card (e.g. imclose, imopen, etc.). Furthermore, the connected-component labeling and region formation operations were run using built-in MATLAB functions bwconncomp, and regionprops. Connected components were stored in a custom class and termed "single-frame ROIs," and these were then passed to the 3rd stage of processing, which merges them into a "multi-frame ROI" that represents the location and spatial distribution of each cell identified over the entire video.

### Region of Interest (ROI) merging

The standard structure of region properties output by the MATLAB function regionprops (Area, BoundingBox, Centroid, etc.) are mimicked in a custom class called RegionOfInterest, where each field of the structure becomes a property of the custom class. We add additional properties for storing state information and data associated with each ROI, along with a number of methods for comparing, merging, manipulating, and visualizing the single-frame and multi-frame ROIs. The single-frame to multi-frame ROI merging procedure is essentially a clustering process that merges single-frame ROIs together using such criteria as the proximity of their centroids, as well as proximity of their bounding-box (upper-left and lower-right corners). Performing this operation quickly was highly dependent on pre-grouping ROIs based on centroid location in overlapping blocks of the image frame, as well as grouping by size. This enabled the clustering to be performed in parallel (across CPU cores) followed by a second iteration of clustering to deal with redundancy in overlapping regions.

### Visualization

Once ROIs are established, all video data is reloaded and passed to a method in the _RegionOfInterest_ class that extracts the 1-dimensional trace for each ROI representing the fluorescence intensity in that region over time. The ROIs and their traces can then be interactively visualized using another method in the _RegionOfInterest_ class.

The _RegionOfInterest_ class defines methods for rapid spatial comparison operations which can typically be viewed as an adjacency matrix using built-in image viewing commands. Visualization of the segmented cell overlay and 1D traces can be manipulated by assigning colors, removing ROIs, hiding ROIs, and more.

### Predicting Activation State & Assessing Network Activity

The continuous signal intensity signals can be reduced to binary indicators of activity for each frame. This enables simplified and fast calculation of information theory measures, such as activation probability, joint and conditional probabilities, response entropy, mutual information, etc. The conversion from continuous to binary uses several abstractions of the signal applied to a Gaussian Mixture Model (GMM). The abstractions are calculated from the following:

1.  Linear least-squares fits to moving windows with variable size to find slope of the line surrounding each point.

2.  Skewness and Kurtosis of finite windows surrounding each data point.

3.  Temporal difference of fluorescence intensity.

The gaussian mixture model employs all measures to infer periods of reliable distinct activation of neurons.

### Parallel Processing

Many built-in MATLAB functions are implemented using efficient multi-threaded procedures, and these are used to the extent that they can be. However, for procedures that must operate on data in irregular formats (i.e. any format other than N-dimensional arrays of primitive data types), one also has the option of performing explicitly defined parallel operations by distributing data across multiple parallel processes, each with their own memory space. Below I give examples of how implementing in a multi-threaded fashion can substantially boost performance, and also an example of a situation where multi-threaded operations aren't possible without explicit calls for parallel distribution.

Standard elementwise operators like _plus_ (+) and _times_ (.\*), as well as comparison operators like _equals_ (==) and _less-than_ (&lt;) will be performed efficiently using as many processing cores as available when applied to large n-dimensional arrays of the same size. However, when operand sizes differ a simple call to the built-in operation will not work. For example, if we wish to subtract the average from each pixel over time from all frames in the series we can accomplish this with a call to MATLAB's _bsxfun_ function, which stands for Binary-Singleton-eXpansion-FUNction, as shown below:

```matlab

      Fmeansub = bsxfun( @minus, F, mean(F,3) );

```

This operation passes a function handle as the first argument (denoted by the '@' symbol) indicating the operation to perform. It then passes the entire \[IxJxK\] array of image data as the second argument, and it's temporal mean with size \[IxJx1\] is calculated once and passed as the third. The function efficiently expands the mean argument as needed for fast distribution across parallel threads.

### Managing Continuity

Data such as baseline frames and frames for alignment must be passed between parallel processors to maintain continuity between data divided temporally between processors. However, the efficient application of this approach was limited by the system memory and number of cores available, and was meant to be applied in a cluster environment.

Building the set of functions for offline processing enabled application to data already gathered, and also served as a framework that informed the necessary procedures to be included in the online extension of this toolbox.

#### Computing Power and Connectivity

- Remote Clusters (AWS)
- Graphics Processing Units (NVIDIA GTX)
- Embedded Units (NVIDIA Tegra X2) 2. Well developed libraries
- ImageJ (so so)
- OpenCV (uses OpenCL)
- GStreamer (much better)
- OpenGL
- Shader

#### Image Processing

- Motion Correction
- Image Enhancement

#### Motion Correction Two approaches to find displacement

#### Spatially Homogeneous phase correlation

- aka normalized cross correlation - Feature Matching
- Detect features (i.e. corners) - Triangulate best

#### Image Enhancement

1.  Contrast - Linear Scaling - Lookup Tables
2.  Spatial and Temporal Filtering
3.  Feature images - Gradients

#### Feature Extraction

1.  Feature images (temporally independent)

- Gradients - Surface Curvature 2. Long Term Memory - Statistics
  - changes (single pixel)
- Mutual information changes (inter-pixel)

#### Acceleration and Optimization Procedures for Online Video Processing

#### Incremental Update of Statistics

##### central moments

```matlab
      function [m1,m2,m3,m4,fmin,fmax] = updateStatistics(x,m1,m2,m3,m4))
            n = n + 1;

            % GET PIXEL SAMPLE
            f = F(rowIdx,colIdx,k);

            % PRECOMPUTE & CACHE SOME VALUES FOR SPEED
            d = single(f) - m1;
            dk = d/n;
            dk2 = dk^2;
            s = d*dk*(n-1);

            % UPDATE CENTRAL MOMENTS
            m1 = m1 + dk;
            m4 = m4 + s*dk2*(n.^2-3*n+3) + 6*dk2*m2 - 4*dk*m3;
            m3 = m3 + s*dk*(n-2) - 3*dk*m2;
            m2 = m2 + s;

            % UPDATE MIN & MAX
            fmin = min(fmin, f);
            fmax = max(fmax, f);
      end
```

##### Extract Features

```matlab

      function [dm1,dm2,dm3,dm4] = getStatisticUpdate(x,m1,m2,m3,m4)
            % COMPUTE DIFFERENTIAL UPDATE TO CENTRAL MOMENTS
            dm1 = dk;
            m1 = m1 + dm1;
            dm4 = s*dk2*(n^2-3*n+3) + 6*dk2*m2 - 4*dk*m3;
            dm3 = s*dk*(n-2) - 3*dk*m2;
            dm2 = s;
            m2 = m2 + dm2;
            % NORMALIZE BY VARIANCE & SAMPLE NUMBER -> CONVERSION TO dVar, dSkew, dKurt
            dm2 = dm2/max(1,n-1);
            dm3 = dm3*sqrt(max(1,n))/(m2^1.5);
            dm4 = dm4*n/(m2^2);
      end
```

#### Simple Processing on GPU

```matlab
      [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(x,m1,m2,m3,m4)
      [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(rowidx,colidx)
```

##### Alternative Libraries

- [NVIDIA Performance Primitives](https://developer.nvidia.com/npp)
- [OpenCV](https://developer.nvidia.com/opencv)
- [VLFeat](http://www.vlfeat.org/)
- OpenGL
- OpenCL
- OpenVX
- CLosedDoesNotExist (...?)
- Shader Languages
- GLSL
- HLSL
- WebGL
- Halide
- - FFmpeg

- GStreamer

### Choice of Interface

#### Procedural Framework: Pipes, Streams, & Graphs

##### Concurrency: Parallel = Performance?

Not always, no. While concurrent processing of independent tasks or sequentially arriving data elements will almost always increase performance, this is not always the case. At a lower instruction-level than we typically program, synchronous operations can often be optimized in ways that asynchronous operations cannot, typically through strategic register allocation, or by taking cache-hit performance). "Globally Asynchronous Locally Synchronous"

##### Scheduling

##### Adaptive

#### Choice of Operations

- What is the goal?
- Is it effective?
- Is the computation cost worth the result?
- Are there side-effects or artifacts?
- Can they be reliably controlled or accounted for?

#### Motion Correction

In our application, the goal of a motion correction operation is to artificially suppress translation of the brain tissue parallel to the image plane. _Phase-Correlation_ (also referred to as _normalized cross-correlation_) has consistent performance across a range of image sources with varying spatial noise characteristics. However, a large non-uniform change from reference frames - such as occurs when cells with low baseline fluourescence are first activated - can cause drastic errors that must be recognized and corrected by a supervisory procedure. This can induce an undesirable, unpredicatable, and specifically inopportune latency Unfortunately in all the whole pipeline.

Unfortunately, "Globally Asynchronous Locally Synchronous"

as it's In some experimental setups,

The phase correlation method of Motion Estimation - cost: 2-10 ms/frame - Frequently unstable (depending on video content)

##### Motion Compensation & Interpolation

- cost: 400-800 us/frame
- Requires infill with nearby or prior pixel values if frame size is to be maintained
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
Susie S. Cha^1^, Mark E. Bucklin^1,2^, Xue Han^1^

Author affiliation

^1^Boston University, Department of Biomedical Engineering, Boston, MA
02215

^2^Boston University, School of Medicine, Boston, MA 02118

Keywords

wide-field optical imaging, in vivo, silicone elastomer, cranial window
...

# Abstract

Wide-field epifluorescence imaging of a living brain has substantially
expanded our ability to perform high-throughput detection of neural
activity at a spatial and temporal resolution sufficient to capture rich
cellular dynamics of large interconnected networks of neurons. Yet
optical signals are highly sensitive to light scattering, and the
preservation of optical clarity through craniotomies is critically
important for high-resolution imaging. Longitudinal imaging in cortex,
however, is often limited due to granulation tissue growth between the
brain and the imaging access window, and its inhomogeneous structure
induces a significant level of optical scattering, thus severely
compromising spatial resolution. To address this concern, we report the
design of a polydimethylsiloxane (PDMS)-based cranial window system that
can faithfully prevent the optically obstructive tissue from growing
under the craniotomy. Additionally, the two-part system is constructed
to allow for continued full tissue access after its initial
installation. Utilizing the system, we demonstrate a year-long course of
wide-field imaging recording the simultaneous activity in thousands of
cortical neurons in awake mice.

1.  Cranial window system that provides more functionalities to extend
    our capability using in vivo optical imaging to probe the complexity
    of the brain

    a.  Long-term maintenance of optical quality

    b.  Easy and repeatable tissue accessibility

2.  Goal of the project was to design a system that

    c.  Performs reliably

    d.  Easily adaptable

    e.  Easily adoptable

3.  To achieve, used silicone elastomer (vs. convention -- glass)

    f.  Major advantage -- can easily incorporate shapes and features to
        develop a system that can adapt to various experimental
        requirements

    g.  Provide equivalent optical quality to glass

4.  Achieved by developing a multi-stage system composed of a headplate
    with an integrated chamber and a cranial window

    h.  Window was casted incorporating features to block tissue growth
        within image field

        i.  Achieve image durations extending beyond a year to record
            calcium dynamics of hundreds of individual neurons using
            wide-field epifluorescence microscope

    i.  Headplate provided the base for window installation which can be
        temporarily detached to perform acute manipulation on the
        underlying tissue

5.  Easily adaptable, demonstrated through providing an example of two
    systems with similar design concepts but incorporated distinct
    design features

    j.  Bilateral hemispheric windows

    k.  Whole-brain window

6.  Designs of the reported system are available in open source and can
    be easily adopted by developing the parts through rapid prototyping

# Introduction

In vivo optical imaging provides a means to visualize the structural
features and functional dynamics of brain tissue, and to measure how
these change over time^1--3^. Optical techniques for observing neural
activity have advanced due to evolving digital imaging technology, and
the development of increasingly effective functional indicators such as
the genetically encoded fluorescent calcium sensor GCaMP6f^4^.

The ability to observe and record from the same brain region for
extended periods is critical for longitudinal experiments tracking long
term changes^5--8^. This ability relies heavily on maintaining a clear
optical light path by forming a stable non-scattering interface with
neural tissue overlying the targeted brain region. Using a wide-field
fluorescence microscope with a scientific-CMOS camera, we can record
activity in hundreds of distinct neurons in the hippocampus and other
subcortical brain regions of awake behaving mice^9^. The method used to
create an optical window in subsurface regions allows the quality of
optical access to remain stable for several months. The approach is not
without drawbacks, however; stable optical access is delayed by pooling
and coagulation of blood on the window surface resulting from
unavoidable vascular damage inherent to the implantation procedure^5^.
The period of delay post implantation can range from 3-8 weeks before
tissue repair and phagocytic debris removal processes subside to yield
optical access to targeted brain tissue with stable imaging quality.

Attempts to image neocortical regions on the surface of mouse brain
typically use a small glass disc fixed to the cranial surface to seal
and protect the craniotomy, and to provide optical access to the
brain^10,11^. This approach, however, is often challenged by progressive
deterioration in image quality. Consequently, the reliability and
average duration of optical access has been insufficient for long-term
studies. The degradation is observed as a cloudy layer that gradually
covers the imaging field, and is thought to arise from the natural
inflammatory response that follows a craniotomy^10--15^. As granulation
tissue grows, its inhomogeneous structure scatters light at the
interface between brain tissue and optical window, which consequently
degrades image quality and blurs fluorescence signals. Image quality in
wide-field microscopy is more sensitive to scattering along the light
path than scanning microscopes like two-photon or confocal, and is
therefore particularly susceptible to this degradation^1,16^.

While glass is c­­hemically inert and comes in many shapes and sizes,
cementing glass to the top of the skull leaves a fluid filled gap
between the window and brain surface which is quickly filled by
granulation tissue. This process, thought to be a mechanism for dura and
bone regrowth, eventually disrupts the high optical clarity for chronic
imaging^12^, and hence is a common target for efforts to extend image
quality through a cranial window^7,12^.

Efforts to overcome this problem by adding purely mechanical features to
the cranial window have involved attaching spacers made of
agarose^11,17^, silicone^18,19^ and glass^7^ to the window's
brain-facing surface that compensate for the thickness of removed bone.
These approaches report delaying tissue regrowth for up to a few months
before optical quality deteriorates. These modest results indicate a
valid basis underlying this approach and suggest that extending this
strategy by starting with a design and material not limited by the fixed
form of flat glass optical windows could yield some improvement.
Additional elements of a chronic cranial imaging window intended to
mitigate degradation by granulation tissue typically target the primary
source stimulating the process, inflammation. These include the aseptic
design of seals and features, selective use of biocompatible materials,
and perioperative administration of anti-inflammatory and antibiotic
drugs^7,20,21^.

While these designs have improved longevity, they remain limited in
terms of long-term access to the cortical tissue. The ability to access
and manipulate tissue during real-time imaging facilitates novel ability
to characterize the dynamic processes in both physiological and
pathological conditions^22^. Several strategies have been reported to
gain access to regions below glass cranial windows by incorporating
features such as an access port sealed with elastomer^23^, infusion
cannula^24^, or the use of microfluidic channels^17^. Nonetheless, the
approaches limit the tissue accessibility to a single designated site
predetermined before an experiment begins and do not offer uniform
access over the imaging area.

To address the relative restrictions using glass as cranial windows, a
number of alternative efforts have highlighted the use of silicone
elastomer for cranial windows^25--29^. For example, polydimethylsiloxane
(PDMS) is optically clear, non-toxic and chemically inert and can be
molded to take any shape or exhibit any desired feature, not necessarily
sacrificing the imaging field of the window. These properties combine to
offer a remarkably versatile material, particularly favorable for
prototype development for projects with demanding specifications for
biocompatibility and optical performance. A well-known and widely used
example is the artificial dura for in vivo optical imaging in nonhuman
primates^25,26,30^. This chronic implant device is placed in and covers
a craniotomy and sits protected within a chronic cranial recording
chamber. It mitigates tissue regrowth, and interfaces with a cylindrical
insert -- also made of PDMS -- for optical imaging of neocortex.
Additionally, the artificial dura is thin enough to enable access to
underlying tissue for penetrating electrodes, which penetrate easily and
leave a tight seal after withdrawal. Yet the efforts for translating
this design windows for small research animals using silicone elastomer
have thus far been limited. And a system with long-lasting high optical
clarity and flexible tissue accessibility remains to be developed or
explored for rodent models.

In this paper, we describe a design and demonstrate a cast silicone
chronic cranial imaging window system, developed to facilitate
longitudinal imaging experiments in mouse neocortex. The primary
capability requirements for this design are:

1.  Long-term stability of an optically clear light-path to cortical
    surface

2.  Intermittent physical access to imaged region at any point in study

The system was designed considering biocompatibility and optical
performance to facilitate integration in place of the removed bone flap
enabling us to achieve sustained periods of optical clarity, extending
beyond a year in some mice and allowing for both high spatial and
temporal resolution using a wide-field microscope. Additionally, the
two-part system consisting of a fixed headplate with integrated neural
access chamber and optical insert, allowed flexible access to the
underlying tissue. The utility of our design is demonstrated through
chronic optical imaging of calcium dynamics in the cortex and acute
interventions to the tissue upon detachment and replacement of the
window from the headplate. Adaptation

# Results

Here we report the design for a head-fixation and cranial window device,
and the procedures for surgical attachment. The sections below describe
the features of each component, and also report the critical elements
that contribute to the performance and capabilities of our optical
imaging window system. The following sections provide a detailed report
of the system performance observed during evaluation. Adaptation

## Cranial Window **[System]{.smallcaps}**

Many design features, and procedures for implantation were introduced
and developed to mitigate tissue growth for the sustained optical
quality of the window. Other features were included to enhance imaging
performance in awake behaving animals, to facilitate repeatable
localization of image fields across sessions and animal subjects.

The cranial implant system is composed of two parts: a headplate with an
integrated chamber, and a silicone optical insert. The headplate is
bonded to the dorsal surface of the animal's bare skull. The optical
insert -- sometimes referred to as a "cranial window" -- seals the
chamber and establishes an optical interface with the animal's brain
through craniotomy sites in the chamber floor (Fig 1a).

### Headplate

The bottom surface of the headplate is curved to conform to the dorsal
skull surface of a typical mouse. This feature aids alignment during
installation, and a large surface area enables a strong adhesive bond to
the skull surface. Adhesive cement is applied continuously along all
points of contact to create a permanent bond along the entire perimeter.
The cement applied along this joint effectively seals the bottom of the
aseptic chamber and is critical for its long-term integrity.

The wide area of skull-to-headplate attachment provides a mechanically
stable coupling between the animal's skull and the headplate holder,
which is fixed to the microscope table. The headplate is bonded to all
skull plates, which stiffens the skull tremendously. Additional rigidity
is provided by a central support structure that contacts the skull along
the sagittal suture. All these features combine to provide a very rigid
attachment to the mouse cranium, which drastically reduces its motion
relative to the imaging system (Fig 1b). Remaining brain motion is then
primarily movement relative to the skull, and may originate from
physiological forces (i.e. cardiorespiratory) as much as behavioral
forces from animal movement; suppressing this intracranial motion is
addressed in the design of the silicone window insert described below.

### Chamber

The chamber in the headplate center facilitates physical access to
neural tissue by protecting the craniotomy sites between interventions.
Once the headplate is bonded to the animal's skull, the floor of the
chamber is formed by the central support structure that traverses and
fuses the sagittal suture, the skull surface surrounding each
craniotomy, and a flat ledge that extends laterally. The joints between
the skull surface edges of the central support, anterior and posterior
walls, and the lateral ledge are sealed during the headplate attachment
procedure. This bottom seal is crucial for maintaining an aseptic
environment for the protection of the exposed brain tissue. When the
dura mater is left intact during the craniotomy, the space within the
chamber is continuous with the epidural space.

### Optical Insert

The insert has optically flat top and bottom rectangular surfaces. The
bottom brain-facing surfaces are positioned to form a flat interface
with the intact dura through each craniotomy. The body of the insert
provides a clear light-path between top and bottom surfaces. The walls
of the body are tapered to increase the angle of unimpeded light
collection/delivery at the image field. This increases the numerical
aperture for imaging through high power lenses, and also expands options
for off-axis illumination. The tapered body is extended to the brain
surface via vertical-walled columns that traverse each craniotomy. These
columns fill the space made by removal of the bone flap during
craniotomy, and their bottom surface gently flattens the brain tissue,
positioning the cortex in a horizontal plane for convenient wide-field
imaging. Both the top and bottom surfaces are made optically clear by
integrating microscope slides in the mold when casting. The dimensions
of the insert are depicted in figure 1-b.

Inserts are fabricated in batches using an optically transparent
silicone elastomer. We vacuum cast the part in a PTFE and glass mold
with an aluminum frame inclusion that gets embedded near the upper
surface. This frame provides a site for attachment and sealing to the
rim of the chamber, as well as structural reinforcement. This helps to
establish and maintain a flat optical surface at the top of the insert,
parallel to the headplate (Fig 1b). We constructed inserts with the
bottom optical surface parallel to the top, which works well for imaging
medial cortical regions. For imaging lateral cortical regions (e.g.
visual or auditory cortex) the mold can be adapted to produce inserts
that form a flat image plane with consistent controllable angle relative
to the headplate. For any desired angle, this capability greatly
simplifies recording from a consistent image plane across sessions and
animals. The medial cortical region imaged in the demonstration provided
here was square in shape (2 mm X 2 mm), at a horizontal angle of 0
degrees, and extended from 0.83 mm to 2.83 mm symmetrically off the
midline (Fig 1a).

## Installation and Usage

The surgical installation procedures for this multi-stage implant device
were adapted from a combination of procedures in common use for
attachment of headplates and cranial windows in mice, and similar
devices used for optical imaging in primates. The specific protocol
evolved during 3 distinct trial runs, and the final protocol is
summarized here and detailed in methods and materials below. The 18 mice
reported here received the same version of headplate and optical insert.
These mice were used for simultaneous development of other projects not
described here. Minor changes were made to the surgical procedures from
one batch to the next, each with discernable effect; see the discussion
for details.

Because this is a multi-stage implant, the procedure for installation
can be separated into multiple distinct surgeries depending on
experimental requirements. The first stage includes headplate attachment
to bare skull, centrally aligned along the AP axis with the bilateral
sites over the cortical region of interest. Once the headplate is
securely bonded, bilateral craniotomy can be made through the skull in
the base of the chamber. If the second stage of installation is
performed separately, the chamber is given a temporary silicone seal to
protect the craniotomy. We delayed the second stage of installation for
at least 2 to 3 days to allow for mouse recovery.

The second stage involves installation of the optical window, and may be
directly preceded by injection of virus, pharmaceutical compounds,
exogenous cells, or any other substance of interest. The optical window
is installed in the chamber with the assistance of a stereotaxic holder,
which enables fine height adjustment and holds the window's position
while being secured in place. The angle of the window's top surface is
held parallel with that of the headplate. The chamber is partially
filled with sterile agarose to displace all air from the chamber when
the optical insert is lowered into place. The height is adjusted to
provide full contact between the insert's bottom surface and the dura,
which also places the insert's frame in close proximity to the rim of
the chamber. Dental cement is applied to form a joint between the
headplate and the frame of the optical insert, fixing the insert in
place and aseptically sealing the chamber.

The optical insert can be detached and reattached at any time to provide
physical access to the neural tissue and/or for window replacement (i.e.
for mid-experiment injections or window damage repair respectively).
Detachment is relatively easy, accomplished by etching away the joint
between headplate and optical insert. Window replacement uses the same
procedure as the second-stage installation described above.

The replacement procedure was attempted 5 times, 4 of which were
successful in preserving or restoring optical quality to "like-new"
condition, without inflicting detectable tissue damage. Three windows
were removed and replaced following damage to the top surface of the
optical insert, inflicted by feisty cage-mates with sharp incisors (at
91, 83, and 172 days post-installation; 91 days case unsuccessful). The
remaining two cranial windows were removed at 20 days post-installation
to facilitate direct tissue access for a study requiring cellular graft
to the imaged region. We found that the removal needs to be performed
slowly, taking great care to avoid capillary rupture in the exposed
brain and surrounding granulation tissue. During each of these
procedures, we observed the pattern of granulation tissue growth into
the peripheral area of the chambers. Photos of the typical growth (as
observable with window removed) at day 172 is shown in figure 3-d, and
described in more detail below.

## Evaluation of System Performance

Throughout development we implanted several prototypes to test the
effect of various features and conditions. The cranial window design and
surgical procedures described in this paper were attempted with 18 mice.
Cranial window condition was evaluated by direct observation and
evaluation of fluorescence dynamics in processed video recorded during
periodic 5-minute imaging sessions. Direct (bright-field) observation
with a stereoscopic microscope was useful for evaluating quality of the
optical interface with brain tissue, as well as for tracking progression
of granulation tissue growth in the surrounding space at the edges of
the craniotomy. Analysis of cell dynamics measures from processed
fluorescence imaging video indicated actual usability of the window for
longitudinal studies requiring activity metrics at a cellular level.

### Experimental Batches

The first batch served as a short trial-run for the prototype and
procedures whose performance in early tests suggested strong potential
for long-term reliability. We ran the first batch for 4-6 weeks to get a
better assessment of what we could expect for long-term viability. With
this design and minor modifications to the surgical procedure, we felt
comfortable using the window in studies with long-term requirements that
would also allow for continuous assessment of the window's performance
in parallel. The first batch of windows was installed in April-May 2017
(N = 7) and was evaluated 2-3 times/week for just over 1 month. Several
more were implanted for use in a long-term imaging study beginning with
a second batch in June 2 017 (N = 6), and a third in October 2017 (N =
5). The results of these runs are reported below, summarized in figure
3-b.

### Sustained Optical Quality Extended over a Year

In the first batch of 7 mice, image quality provided by the window was
more than sufficient to record cell dynamics across both image regions
beginning 4 days after the window-installation and
fluorophore-transfection procedure and was sustained for several weeks.
At 4-6 weeks post-implant this batch of mice was evaluated and 6 of the
7 mice were discontinued and the installation procedure was adjusted for
the next batch. The decision to discontinue in each case was based on
observed deterioration in either the health of the mouse (4 out of the
6) or the optical quality of the window (2 out of the 6). See the
discussion section for the mechanisms we suspected to underlay and
procedural adjustments made to address these issues.

We continued to observe and image the 7th mouse to this day. Progression
of the optical quality and fluorophore expression characteristics in
bilateral image regions is depicted in figure 4 for this mouse. Optical
quality at the window-tissue interface has remained consistent for
longer than 18 months at the time of this manuscript's preparation. The
structure of granulation tissue surrounding the window at 12 months is
described in detail below and depicted for this mouse in figure 3-d.

Similar to the first batch, the second batch of 6 mice was observed and
recorded for some time (3 -- 5 months) before discontinuing all except
one most exceptional mouse. This mouse received a window replacement at
day 83, and was imaged periodically for 11 months before terminating due
to a health concern unrelated to the surgical procedure.

The imaging period for the last batch was extended beyond what was
required for the stem-cell study to more thoroughly test the longer-term
limits of sustained optical quality. Of 5 mice, 1 mouse did not recover
as promptly as expected following the craniotomy procedure and was
immediately discontinued. We observed consistent performance on
long-term optical sustainability, extending over 12 months on average
among the 8 windows. Half of these windows remain to be imaged to this
day, and the rest were discontinued either followed by capillary rupture
within image field or the deterioration of the health of the aged
animals.

Figure 3-a presents transfected cells surrounding the initial virus
injection site that can be identified throughout the field-of view of
1.3 mm x 1.3 mm. In this data set, estimates of cell number ranged from
XX to XX with a relatively small variation among few randomly selected
days between XX and XX.

### Direct Observation of Cranial Chamber

We periodically examined the imaging chamber condition in all implanted
mice using a stereoscopic microscope. Degradation of the optical
interface was found frequently in prototypes/procedures that preceded
the one mentioned here. This was observed as progressive extension of a
cloudy white inhomogeneous layer across the brain-facing surface of the
optical insert. Using the design and procedures reported in this paper,
this type of degradation rarely occurred, limited to the cases reported
above in Batch 1.

Remarkably, but not unexpectedly, tissue growth surrounding the insert
was evident in all cases, regardless of window clarity. The tissue
appeared highly vascularized, and grew from the craniotomy edge outward
along the chamber floor (figure 3-c). This growth is a natural response
to the tissue damage inflicted by any craniotomy procedure. The
difference observed here is only that the growth does not extend under
the window. Instead, it forms a non-adhesive interface with the vertical
walls of the transcranial columns and diverges upward into the aseptic
chamber, replacing the agarose filling between the optical insert and
the adhesive cement covering the skull and chamber floor. To further
investigate the structure of granulation tissue growth into the
peripheral chamber areas we detached the optical insert for unobstructed
observation in several mice. An especially gnarly example from a 6-month
duration window is pictured in figure 3-d.

###

### In vivo Tracking of Transplanted Stem Cells over Long Term

The ability to separate the installation procedure into Stage 1 and 2
was critical to capture the integration process of transplanted stem
cells from day 4 and day 563 (figure 4). In addition to window
installation, the experiment entails dissection of progenitor cells from
E13.5 mouse embryos prior to transplantation which sequences require to
be carried out in a timely manner. Tailored to this specific
application, we performed Stage 1 of the installation procedure two days
in advance, allowing time for tissue dissection immediately before
conducting Stage 2 on day 0 (figure 4-b).

Figure 4-a shows one of the exceptional mice transplanted with two
distinct cellular sources of glutamatergic and GABAergic neurons in left
and right hemispheres, respectively. The optical interface of the
cranial window sustained to

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

##

## Adaptability

##

-   we then explored the ability of the cranial implant system to be
    adapted to provide greater utility

-   building upon the original configuration, we adapted the system to
    accommodate an enlarged window, proving both complete coverage of
    dorsal cortex and similar overall functionality of the original
    system

-   while much of the functional performance of the original system were
    realized by its physical structures, we customized existing features
    to meet the new design requirements and constraints for proper
    functioning

-   we also incorporated new features to enhance system performance

-   below, detailed technical descriptions associated with the
    reconfiguration

\-\--

-   1\. the headplate and the window frame were scaled to integrate a larger
    window

-   2\. raised rims were added to the bottom surface of the headplate where
    it contacts squamosal suture of mouse cranium to supplement
    skull-to-headplate attachment

    -   to accommodate for the restricted attachment area due to the
        removal of a larger fraction of parietal and frontal bone

-   3\. a thin skirt was added to the perimeter of the bottom surface of the
    optical insert which gently wraps around the intact tissue and prevents
    tissue ingrowth

    -   in replacement of the vertical column

    -   to accommodate for endocranium curves

-   4\. incorporated nuts and bolts to facilitate attachment/detachment
    between the modules

    -   in replacement of using dental cement

    -   allows fine height adjustment, positioning, and installation of
        the window without the use of stereotaxic apparatus

    -   added silicone coating to the chamber's inner walls that form a
        seal with the optical insert upon its attachment

-   5\. incorporated an auxiliary module that protects the integrity of the
    window using a magnetically-coupled protective cap

    -   in replacement of tape

\-\--

-   wide-field imaging of vasculatures

    -   the mechanical barrier effectively blocks tissue growth (figure)

    -   figure

-   2-photon imaging of transplanted cancer cells

# Discussion

**Opening paragraph (key concepts to include)**

-   we developed a cranial window system for in vivo optical imaging in
    mice

-   specifically, we developed a system that can provide sustained
    optical quality and tissue accessibility demonstrated through stem
    cell imaging

-   the performance was achieve by using silicone elastomer to
    incorporate the critical features

-   silicone-based window can easily incorporate features to be
    functional and provides good optical interface to record cellular
    activities through wide-field imaging

-   device design, two part component window designed to block tissue
    growth

-   performance, duration, access by taking off

-   additionally, the reported system can be adapted for different
    applications demonstrated through the two versions

-   special focus on searching for the critical features to achieve the
    desired performance without compromising the optical quality

-   also easier to systematically test features and optimize towards
    fulfilling desired outcomes

The goal of this project has been to facilitate long-term studies
requiring sustained optical access and intermittent physical access to
the neocortex of intact brains in small animal research models -- such
as rats and mice. Specifically, we require a bilateral cortical windows
suitable for wide-field imaging, and access to the underlying tissue for
virus-mediated gene delivery and injection of exogenous labeled cells.
We needed this access to be available as soon as possible
post-installation, and for the optical quality to be sustained for
several months. Experiment duration is limited using current window
designs by progressive degradation of the optical light-path at the
brain-to-window interface caused by highly scattering tissue growth. The
device/system described here successfully fulfills the requirements of
this objective, giving a stable and reliable optical window with
unrestricted access for longer than one year.

**\
**

**Main finding: sustained optical quality (Fig 3)**

-   the implant effectively blocks the granulation tissue from growing
    within the image field, yielding a prolonged image duration often
    extending beyond a year

-   critical elements that facilitate the maintenance of the long-term
    optical quality

    -   system design features

        1.  mechanical barrier ^(Ref)^

        2.  adjustable height

            provides a better fitting to replace the removed bone flap

            incorporating both methods may have a synergetic effect on
            impeding the tissue growth

            observed divergence of granulation tissue ^(Ref)^

<!-- -->

-   other factors

    1.  anti-inflammatory drugs ^(Ref)^

        -   cortical steroid

        -   NSAID

    2.  air-tight seal within the chamber

        -   specific to the system design

<!-- -->

-   all four elements are equally critical to achieving the sustained
    optical quality

-   implementing the reported method may eliminate the primary reason
    for pre-terminating the image session due to tissue ingrowth

-   the system can facilitate studies that require long-term observation
    such as aging or disease progression

Refer to the methods section for the specifics of surgical procedures
for headplate installation and insert attachment. These procedures were
established after testing the variable formulations in protocol. Of
particular note, we found that administration of both a corticosteroid
and a nonsteroidal anti-inflammatory drug had a substantial impact on
the viability of the optical interface. Additionally, the silicone
insert must be attached at the correct height, which must be determined
by observation of the contact between the dura and the bottom surface of
the insert. The insert must be depressed very slightly until full
contact is made across the entire window, but pressing beyond necessary
will quickly exert an undesired increase in intracranial pressure,
increasing inflammation and adverse outcomes. Lastly, sealing the
chamber is absolutely vital to the viability of the optical interface,
as well as health of the animal. This includes a permanent seal between
the chamber and skull, and a reversible seal between the chamber rim and
optical insert. One must also ensure the agarose fill displaces all air
within the chamber prior to sealing. Any remaining air pockets will be
susceptible to bacteria growth and may disrupt normal intracranial and
intermembrane pressures.

**\
**

**Main finding: tissue accessibility (Fig 4)**

-   the implant configuration consisting of two parts facilitates the
    installation procedure to be separable into distinctive stages
    carried out across days

-   similarly, the reversed sequence can be performed for repeatable
    tissue access at later time points

-   ^Ref:^ the process may be comparable to a previously reported method
    of removing the entire glass window to access the tissue

-   here, however, we employed a faster and simpler method to reversibly
    detach and successively reattach the window without risking tissue
    damage compared to the laborious process required of glass windows

-   the approach is advantageous over designating a fixated access port
    ^(Ref)^, providing full access without compromising the image field

-   the practicality of separating the installation operations of a
    complete system has yet been explored

-   the example of a comprehensive recording of the integration process
    of transplanted stem cells reported in this paper particularly well
    demonstrates the advantages of the ability

    -   it may save time and resources -- especially during the
        prototype stages -- by allowing time to ensure each implanted
        animal fully recovers from the initial procedure

    -   the delay allows normalization of the immune response or the
        heightened inflammation triggered by craniotomy before
        attempting a tissue intervention that is sensitive to these
        conditions (e.g. viral or cell injections)

    -   the most remarkable advantage, however, is the ability to image
        the first tissue intervention from day 0

The ability to separate the operations necessary for installation of a
complete system has a number of advantages, and is particularly well
supported using the reported system. It may save time and resources --
especially during the prototype stages -- by allowing time to ensure
each implanted animal fully recovers from the initial procedure.
Additionally, the delay allows normalization of the immune response or
the heightened inflammation triggered by craniotomy before attempting a
tissue intervention that is sensitive to these conditions (e.g. viral or
cell injections). The most remarkable advantage, however, is the ability
to image the first tissue intervention from day 0.

**\
**

**Main finding: adaptation (Fig 5)**

-   the system framework is adaptable to accommodate various
    applications or to enhance its performance to reflect new
    technologies and demands

-   here, we demonstrated the technical feasibility to future-proof the
    original system to adapt to continuously evolving image sensor
    technologies, allowing access to cellular interactions across
    multiple brain regions using wide-field imaging ^Ref^

-   as an inherent aspect of any design process, the adaptation of the
    original design evolved over the course of prototyping and testing
    to ensure consistent overall functional performance

-   the iterative process, however, is much feasible with the major
    progresses of manufacturing and its increased versatility, providing
    better quality, customization, lower cost and shorter production
    time ^Ref^

-   in an effort to compare various manufacturing technologies, we
    explored manufacturing the finalized product design through a number
    of companies and advanced with 3D metal printing with overall
    satisfaction at i.materialise -- we had also developed the parts
    through other rapid prototyping companies including Shapeways and
    Sculpteo

-   additionally, various features and functions of the silicone insert
    were transformed and extended to conform to new design requirements,
    some requiring distinctively different design approaches

-   we could benefit from the versatility of silicone elastomer to cover
    a spectrum of design strategies to optimize its configuration

-   in fact, we found that a seemingly subtle physical difference can
    contribute to more than one function

-   for example, the inclusion of a thin skirt extending below the
    optical insert, which was incorporated to provide protection against
    tissue growth within the image field, may also facilitate the brain
    to conform to the optical interface of the window over time
    resulting in a flat imaging plane, optimal for wide-field imaging,
    which was unachievable previously ^Ref^

-   overall, the design principles established from the initial
    development are robust and can be applied to new developments or
    refinements while preserving all qualities of the original implant

-   the CAD designs of the reported systems are accessible in open
    source and can be modified and extended accordingly to the evolving
    demands and technologies

-   We, the authors, are calling for replication, adaptation, evaluation
    (i.e. continued open / shared development).

**Further improvements**

-   primarily explored the ability to mold precise and complex features
    using silicone elastomer to discover configurations to improve image
    performance

-   encapsulate electrodes or optical guides ^Ref^

    -   Replace with combination optical + integrated electrode window

        -   Imaging as well as optogenetics stimulation

-   -   More significantly, the encapsulation of carbon, metal colloidal
    particles or quantum dots into polymer hydrogel networks will impart
    them with exclusive thermal, sonic, optical, electrical or magnetic
    properties

-   the polymer interface may provide means to penetrate through
    directly ^Ref^ for electrophysiological recording or drug infusion
    allowing recording and/or manipulation during imaging session

<!-- -->

-   thickness of the window, chromatic aberration, wide-field and
    2-photon imaging

-   lenses

<!-- -->

-   As an innovative means to

-   casting into practically any shape, size, or form

-   embed/ Integrate

-   new materials for fabrication

**Conclusion**

-   here, we took an unique approach of using silicone elastomer to
    develop a cranial window system with the specific goals to build a
    system that performs reliable to provide long-term maintenance of
    optical quality and an easy and repeatable tissue access

-   additionally, we prove the system can be easily adaptable for
    different applications

-   the develop of such device will eliminate the physical barrier we
    have to probe the complexity of the brain -- capability to
    facilitate longitudinal optical imaging experiment in mice

http://npi-med.com/news/top-5-reasons-consider-silicone-molding-medical-device-project/
- we used silicone elastomer to develop the window which provides
versatility to add functions

a.  b.  i.  ii.

c.  iii. iv.

<!-- -->

a.  i.

b.  c.  d.  e.  ii.

<!-- -->

a.  b.

<!-- -->

a.  b.

# Materials and Methods

## Device development and fabrication

Components were designed using SolidWorks. Prototypes were fabricated
using CamBam to generate toolpaths in G-code for machining on a CNC
mill. The headplate and window frame were milled from aluminum plate.
The mold for casting PDMS-based windows was designed in three parts. The
middle component was milled from PTFE. The outer components were made
using a laser-cutter and acrylic sheet (Supplementary). CAD files are
shared on XXXXX(github?)XXXXX.

## Window casting procedure

The PDMS-based windows were fabricated through vacuum casting procedure.
Prior to casting, window frames and two glass coverslips (Corning,
2947-75x38), prepared in advance through plasma etching (30 sec, Power
setting) and silanization using Trichlorosilane (Sigma-Aldrich,
448931-10G), were inserted into the mold. The mold was then placed
between two custom-made acrylic plates with silicone gaskets in between
and was assembled using bolts around the perimeter. The pressure control
port (McMaster-Carr, 5454K61) was connected to the house vacuum line,
and the fill port (McMaster-Carr, 2844K11) was connected to uncured PDMS
polymer (Dow Corning Sylgard 184) (1:10 by weight), thoroughly mixed and
degassed in advance. The liquid-state polymer was then drawn into the
mold filling the volume in between the two coverslips using vacuum. Once
polymer displaced all air, vacuum was released and positive pressure was
applied through the pressure control port after plugging the fill port.
While maintaining positive pressure, the polymer was cured at 75ºC for
12 hours. Finally, the windows were released from the mold and trimmed
using scalpels. Windows were handled so as to protect the top and bottom
surfaces from damage or debris. The completed window was sterilized in
an autoclave before use.

## Surgical procedures

Animal care for surgical procedures is described below, and the details
specific to each procedure are in the sections that follow. All
procedures were approved by the Institutional Animal Care and Use at
Boston University. Stereotaxic surgeries were performed on 6 to 8 weeks
old female C57BL/6 mice (Charles River Laboratories). Pre-operative care
for the initial headplate and craniotomy procedure included subcutaneous
administration of meloxicam (NSAID, 2.5 ug/g) and buprenorphine (opioid
analgesics, 0.3 ug/g), and intramuscular injection of dexamethasone
(corticosteroid, 5 ug/g) one hour before surgery. Meloxicam and
buprenorphine were continued postoperatively every 12 hours for 48
hours. Meloxicam was also given before and after procedures where brain
tissue was exposed, i.e. those for intracerebral injection and window
replacement. For all procedures described below, mice were placed under
general anesthesia with isoflurane mixed with oxygen.

## Headplate installation and craniotomy

We shaved the top of the mouse's head and sterilized the skin using 70%
alcohol and 7.5% Betadine. We made a 1cm midline sagittal incision
through the scalp using surgical scissors, and retracted laterally using
a self-retaining retractor (WPI, 501968). To prepare the cranial
surface, we applied 3% hydrogen peroxide to oxidize and facilitate
removal of periosteal tissue with cotton tip swabs. The surface was then
marked up before headplate installation followed by craniotomy. We
targeted laterally symmetric craniotomies with edge length 2.2 mm
centered at coordinates ±1.83 mm lateral to sagittal suture and 1.00 mm
anterior to bregma. First, we used a surgical skin marker (FST,
18000-30) to roughly indicate the site of each craniotomy and enhance
contrast of the edges to be etched. We etched the corners and edges
using a dental drill with a FG 1/4 round carbide burr (Fig. 2 Step
1(L)). This way of marking the edges facilitates headplate placement and
also aids recovery of the intended craniotomy position despite being
covered by semi-transparent adhesive cement in the following steps.

We used a custom stereotaxic attachment (Supplementary) to position the
headplate symmetrically aligned with the marked sites, and to hold it
horizontal while bonding to skull. The headplate was anchored directly
to the skull using either opaque or semi-clear quick adhesive cement
(Parkell, S380). Subsequently, we began each craniotomy by drilling
along the marked edges (Fig. 2 Step 2(L)). We frequently stopped to
flush debris from the site using sterile saline and an aspirator. Once
separated from the surrounding skull, the bone flap was carefully
removed using a pair of sharp forceps (FST, 91150-20) and a 45º micro
probe (FST, 10066-15) while keeping the dura intact (Fig. 2 Step 1(R)).
At this point, we either attached the optical window or sealed the area
with a layer of non-toxic silicone adhesive (WPI, KWIK-SIL).

## Optical insert attachment

The optical insert attachment can be performed immediately following the
craniotomy or deferred to the day of injection as described below (Fig.
2 Step 4). First, we filled the headplate chamber with sterile 0.5%
agarose solution, immersing the exposed brain. Enough agarose was added
so as to overflow the walls of the chamber as the window is inserted,
ensuring no air gaps remain in the space between the walls of the
chamber and the window, below the joint to be sealed. Next, the window
was placed in the chamber, directly over the craniotomy, in gentle
contact with the exposed tissue. We used a ttaxic apparatus to adjust
the window height and secure its position during attachment. This was
aided by an attachment -- similar to that used for headplate
installation -- which fixed the angle of the window's top surface
parallel with that of the headplate. The height adjustment required
depressing the window until full contact was observed between the inner
window surface and the dura. The window was tacked in place by applying
an accelerated light-cured composite (Pentron Clinic, Flow-It ALC) in at
least three points, bonding the window frame to the anterior and
posterior walls of the headplate. At this point the guide was removed
and the joint was prepped for sealing. Excess agarose (polymerized
overflow from the window insertion step) was aspirated away to expose
and clean the headplate surface surrounding the window. The chamber was
sealed by filling the joint between headplate and optical insert with
dental cement (Stoelting, 51458) using a P200 pipette. The window
surface was protected by applying a double layer adhesive strip made of
gaffers tape over a transparent adhesive film dressing (3M: Tegaderm,
70200749201).

## Window detachment and replacement

The dental cement connecting the window and headplate was etched away
using a dental drill. Before removing the window, we thoroughly flushed
debris from the surrounding surfaces with sterile saline. Replacement
windows were installed using the same procedures described above for
initial attachment. Localizing the replacement window to the same
position was aided by the expansion of granulation tissue up to the
walls of the prior window.

## Injection

The exposed brain was flushed with sterile saline before and after each
injection. Injections were made using pulled glass micropipettes with
inner tip diameter ranging from 40 and 80 um (WPI, 504949). The
micropipette was initially back-filled with mineral oil, then secured
onto a microprocessor controlled injector (WPI, NANOLITER2010). The
micropipette was then front-loaded with virus or cells using a
controller (WPI, Sys-Micro4). In general, an injection of 230 nL of
cells labeled with AAV9.CAG.GCaMP6f (AV-9-PV3081, Penn Vector Core) at
10^6^ cells/uL, or 230 nL of AAV9.Syn.GCaMP6f (AV-9-PV2822, Penn Vector
Core). Injection was performed approximately 500 um deep into the cortex
at the rate of 46 nL/min near the center of the imaging field, while
avoiding blood vessels to maximize the observable cells around the
injection site (Fig. 2 Step 3). The micropipette was left to sit for an
additional 2 min at the injection site before slow withdrawal.

## Wide-field in vivo imaging and microscope setup

Wide-field epifluorescence imaging was accomplished using a custom
microscope equipped with a sCMOS camera (Hamamatsu, ORCA Flash 4.0XX),
470 nm LED (Thorlabs, M470L3), excitation and emission filters of XX and
XX, a dichroic mirror (XX), and a 10x objective lens (Mitutoyo,
378-803-3). Mice were positioned under the microscope for imaging using
a custom headplate holder (Supplementary) and allowed to run on an
air-supported spherical treadmill^18^ as pictured in Figure 2 Step 5.
The camera recorded a field-of-view of approximately 1.3 mm x 1.3 mm
using an image resolution of 2048 x 2048 or more commonly 1024 x 1024.
Continuous image sequences were acquired at 40 to 60 frames-per-second
for 5 to 7 minutes. We selected the field to image within each site by
roughly centering around the injection site. To focus the microscope on
labeled cells in the superficial layers of cortex, we focused on the
surface vasculature to find a stable reference, then advanced the focal
plane 50 to 150 um until multiple cells were distinguishable. A
reference image of the selected image was recorded for each site and
used later to reacquire the same field across image sessions. Alignment
to this reference image relied primarily on using the major blood
vessels as landmarks to guide microscope position in the XY plane. Image
sequences were stored for subsequent processing and analysis.

## Figure 1 Design, assembly and installation of the polymeric optical window.

\(a) Schematic of the window system assembled and installed to the
animal. Cross section shows the placement of the window as the bottom
plane contacts the brain as it extends below the surface of the skull.
Side view shows the adjustable height between the window and the
headplate to compensate the cavity from skull removal. (b) Top and side
view of the polymer window and the headplate. The window frame and the
headplate are made of aluminum, and the window is molded in PDMS.
Exploded view shows how the two pieces can be assembled. Front side of
the headplate includes a feature that avoids hitting the eyes of the
animal. (c) Top and (d) side view of the parts. (f) Parts assembled and
installed to the animal.

## Figure 2 Flexible experimental timeline for surgery, injection and imaging.

Two-part assembly allows flexible timeline to separate the procedure of
headplate installation and craniotomy from injection which helps with
optical clarity during the early period imaging. On Day -2 which can
extend upto Day -7, headplate installation and craniotomy is performed.
Step 1 shows the placement of the headplate above the intended
craniotomy region (before) and the fixation to the skull using opaque
Metabond (after). After at least 48 hours of recovery period, injection
and window installation is performed on Day 0. Step 3 shows injection
using a micropipette filled with Evans Blue dye for demonstration only.
Step 4 shows window installed above headplate using dental cement. Any
cavity between the two pieces are filled with sterile 0.5% agarose.
Lastly, imaging session can start from Day 4. Step 5 shows a mouse
freely running on a treadmill during a imaging session while its head
movement is restrained. The microscope is installed above the animal.
Step 6 shows after window removal (before) that allows full tissue
access, and a new window installed (after) that allows continuation of
imaging over the same region.

## Figure 3 Extended optical clarity by biocompatible design of the system.

\(a) The space between the window and the skull filled with agarose is
progressively replaced by granulation tissue over time. At 6 month,
granulation tissue surrounds the polymer window and vasculature
formation is visible resembling a wound healing process. By 1 year, the
intermediate space is filled with tissue embedded with vasculatures. The
figures are from different animal that represent the corresponding
time-point from the initially window installation - the window was
installed using opaque Metabond on the samples for Day 0 and 1 year and
semi-clear Metabond on the sample for 6 month. (b) Snapshots with the
field-of-view of 1.3 x 1.3 mm were taken over the same regions on both
hemispheres using the major blood vessels as landmarks (circled same
regions). The optical clarity maintains over time to detect cellular
dynamics of individual cells. Some GCaMP6f labeled cells are visible. In
the left hemisphere, vascular remodelings are notable during the early
period.
# Video Processing

<!-- This section borrows from AIM-1 and AIM-2 from the prospectus. -->
## Continuous Online Video Processing

## Introduction

The current generation of sCMOS cameras can capture full-frame resolution video at either 30 fps or 100 fps, depending on the data interface between camera and computer (USB3.0 or CameraLink). At 16-bits per pixel and 2048x2048 pixels, the maximum data rate for the USB3.0 camera is 240 MB/s. Imaging sessions typically last 30-minutes or less. However, pixels are typically binned down 2x2, and frame rate often reduced; processing speed and storage constraints are the primary motivation for doing so. The effect of doubling resolution on processing time when using the graphics card is nearly negligible, however. By identifying ROIs online and extracting the traces of neural activity allows us to discard acquired images and instead store the traces only, or feed them into an encoder for online analysis.

Graphics Processing Units were traditionally developed for the consumer gaming market. They are optimized for the process which involves translating a continuous stream of information into a two-dimensional image format for transfer to a computer monitor. In the context of gaming, the stream of information received by a GPU describes the state of objects in a dynamic virtual environment, and is typically produced by a video game engine. These processors are highly optimized for this task. However, they are equally efficient at performing the same type of procedure in reverse -- reducing a stream of images to structured streams of information about dynamic objects in the image -- and thus are popular for video processing and computer vision applications.

Any GPU architecture will consist of a hierarchy of parallel processing elements. NVIDIA's CUDA architecture refers to the lowest level processing element as "CUDA Cores" and the highest level as "Symmetric Multiprocessors." Typically data is distributed across cores and multiprocessors by specifying a layout in C-code using different terminology, "threads" and "blocks." Blocks are then said to be organized in a "grid." Adapting traditional image processing or computer vision algorithms to run quickly on a GPU involves finding a way to distribute threads efficiently, ideally minimizing communication between blocks.

MATLAB makes processing data using the GPU seemingly trivial by overloading a large number of built in functions. Performance varies, however, and often the fastest way to implement a routine is by writing a kernel-type subfunction -- written as if it operates on single (scalar) elements only -- that can be called on all pixels at once, or all pixel-subscripts, which the function can then use to retrieve the pixel value at the given subscript. The kernel-type function is compiled into a CUDA kernel the first time it's called, then repeated calls call the kernel directly, having minimal overhead. Calls go through the arrayfun() function.

Data transfers between system memory and graphics memory is often the major bottle-neck. Therefore, this operation is best performed only once. However, once data is on the GPU, many complex operations can be performed to extract information from the image, all while staying under the processing-time limit imposed by the frame-rate of the camera sending the images.

## Method and Approach

The entire procedure for processing images and extracting cell signals can be performed in substantially less time than most commonly available tools using the approach described in Aim 1, particularly the methods for restricting the spatial extent of pixel-association operations, and distributing operations across parallel processing cores using a Single Program Multiple Data (SPMD) archetype. However, the total time still exceeds that of the acquisition session. Inefficiency arises from the overhead involved with distributing data and passing information between separate parallel processes. Graphics cards, however execute in what's called Single Instruction Multiple Data (SIMD) fashion, to distribute computation across the thousands of processing cores.

The processing components are implemented using the MATLAB System-Object framework, which allows for slightly faster performance through internal optimizations having to do with memory allocation. Most system objects, each representing one step in the serial processing and signal-extraction procedure, also have companion functions that implement the computation-heavy components of each algorithm using a pre-compiled CUDA kernel.

### Benchmarking & General Performance

Built-in MATLAB functions that execute on the GPU can be profiled with benchmarking functions like *gputimeit()*, or with the *tic/toc* functions. When execution isn't fast enough, they need to be replaced with custom functions. The custom functions typically achieve the speed up necessary by enabling the operation to carried out on several frames at once. This reduces the over-head costs inposed for each function call by spreading it over several frames. This solution is not ideal, as it increases the latency of solutions, however does not preclude implementation in real-time system if the procedures are adapted to run on a real-time hybrid system-on-module like NVIDIA's Tegra X1, which should involve minimal effort once a standard set of successful procedures is realized. The current implementation tests the processing time of each stage of the process to ensure that the sum is less than the acquisition time for each frame dictated by the inverse of the frame-rate (30-50 milliseconds).

### Buffered Operations

Combining frames for each operation can result in near linear speedup. For example, for the phase-correlation step required for motion correction, the FFT and IFFT are called on 16 image-frames at once, and the time take to accomplish is approximately the same as if the operation were called on 1 frame. This essentially leads to a 16x speedup, though the latency is also increased slightly. The best size to use is difficult to pre-determine, and typically must be measured for varying size 'chunks' using the benchmarking functions indicated above. The system objects manage the details necessary to allow buffered chunks of video to be passed to each stage without introducing artifacts at the temporal edges between chunks.

### Image Pre-Processing & Motion Correction

Pre-processing is implemented as with the offline procedure, with a few changes. Images are aligned in chunks, and they are aligned sequentially to two templates. One template is the most recent stable frame from the preceding chunk. The other is a recursively temporal-low-pass filtered image that mitigates slow drifts. Aligning to the first template is usually more stable as the brightness of cells in the recent image will be more similar to those in the current chunk than will be the brightness of cells in the slow-moving average.

The displacement of each frame is found to sub-pixel precision, then used with a custom bicubic resampling kernel that replaces any pixels at the edges with images from the moving average.

### Sequential Statistics

A number of statistics for each pixel are updated online and can be used for normalization and segmentation procedures later in the process. These include the minimum and maximum pixel intensity, and the first four central moments, which are easily converted to the mean, variance, skewness, and kurtosis. The formulas for making these calculations are given below, and are performed in a highly efficient manner as data are kept local to each processing core, and repeat computations are minimized.


```matlab
n = n + 1;
f = F(rowIdx,colIdx,k);
d = single(f) - m1;
dk = d/n;
dk2 = dk\^2;
s = d\*dk\*(n-1);

% UPDATE CENTRAL MOMENTS
m1 = m1 + dk;
m4 = m4 + s\*dk2\*(n.\^2-3\*n+3) + 6\*dk2\*m2 - 4\*dk\*m3;
m3 = m3 + s\*dk\*(n-2) - 3\*dk\*m2;
m2 = m2 + s;
% UPDATE MIN & MAX
fmin = min(fmin, f);
fmax = max(fmax, f);
```


Furthermore, the value used to update each central moment at each point in time can be used as a measure of change in the distribution of each pixel caused by the current pixel intensity, as explained next.

### Non-Stationarity & Differential Moments

Stationary refers to the property of a signal such that its statistics do not vary over time, i.e. its distribution is stable. Neural signals tend to specifically *not* have this property, in contrast to other measurable components such as those contributed by physiologic noise (heart-rate, respirations, etc.). Thus, by analyzing the evolution of statistical measures calculated for each pixel as frames are added in sequence gives a highly sensitive indicator of neural activity. This is done using a routine analogous to that for updating central moments given above, except the values returned are not only the updated moment, but also the updating component -- essentially the partial derivative with respect to time. This is illustrated below, including the normalization functions which convert the partial-moment values to their variance, skewness, and kurtosis analogues:

> % COMPUTE DIFFERENTIAL UPDATE TO CENTRAL MOMENTS
>
> dm1 = dk;
>
> m1 = m1 + dm1;
>
> dm4 = s\*dk2\*(n\^2-3\*n+3) + 6\*dk2\*m2 - 4\*dk\*m3;
>
> dm3 = s\*dk\*(n-2) - 3\*dk\*m2;
>
> dm2 = s;
>
> m2 = m2 + dm2;
>
> % NORMALIZE BY VARIANCE & SAMPLE NUMBER -&gt; CONVERSION TO dVar, dSkew, dKurt
>
> dm2 = dm2/max(1,n-1);
>
> dm3 = dm3\*sqrt(max(1,n))/(m2\^1.5);
>
> dm4 = dm4\*n/(m2\^2);

These functions run on images representing the image intensity, and also on images taken from sequential differences indicating the temporal derivative of image intensity. The combination of outputs from these operations indicate both when image intensities are significantly high relative to past distribution, and also when intensities are changing significantly faster than learned from their past distribution.

### Surface Classification: Peaks, Edges, Curvature

Edge-finding methods are employed for establishing boundaries between cells, and first and second-order gradients are used to compute local measures of curvature from an eigenvalue decomposition of the local Hessian matrix. I won't go into detail, as the utility of these procedure in the most recent implementation has been lost, but nevertheless, the operation is optimized and ready to be plugged back in when further development calls for better accuracy informing cell-segmentation, or when a faster or more accurate motion-correction algorithm is called for.

### Online Cell Segmentation & Tracking

Cells are segmented by first running sequential statistics on the properties of identifiable regions on a pixel-wise basis. That is, as regions are identified in a method similar to that used offline in Aim 1, the region-properties are calculated (Centroid, Bounding-Box, etc.) and statistics for these properties are updated at each pixel covered by a proposed region. After sufficient evidence has gathered, Seeds are generated by finding the local peak of a seed-probability function that optimizes each pixel's proximity to a region centroid, and distance from any boundary. Regions are grown from these seed regions, and registered in a hierarchy that allows for co-labeling of cellular and sub-cellular components. Newly identified regions occur as new seeds, where as seeds overlapping with old regions are used to identify sub-regions, or to track regions over time.

### Signal Extraction from Subcellular Compartments

I also have functions for the extraction of normalized Pointwise-Mutual-Information (nPMI), which can operate on a pixel-to-pixel basis or on a region-to-pixel basis. This operation accumulates mutually informative changes in all pixels in the maximal bounding-box (e.g. 64x64 pixels) surrounding each identified regions centroid. The weights given by this function can take on values between -1 and 1, and can be used to inform any reduction operations to follow. Additionally, spatial moments can indicate the subcellular distribution of activity across the identified region. In this context, the first spatial moment M~00~ indicates the mean signal intensity.

### User Interface for Parameter Tuning

Some system-objects also incorporate a user interface to aid in parameter selection for tuning.
## Compression: as a Tool, a Goal, as an Explanation

This section describes general compression algorithms as well as compression algorithms specifically tailored to application in video, accomplished by searching for both temporal and spatial redunancy.



***

## Data Management

Essential to the long-term success of any operation is an effective strategy for the management I've all data coming in and out of the system. Especially important is the insured facility for continued access and translation of data as systems evolve or as data is passed to other infrastructure. Strategies that meet the need of data generators and users often if it's somewhere on a spectrum of strictly defined data structures that minimize errors but are strict and difficult to evolve, versus those that require verbose documentation which hinders performance but are adaptable.

The new structures that scientists typically use are on the flexible and self-describing Spectrum and, these include two files for large image formats, fits files, cifs, Matlab structure definitions, which are an implementation of hdf5 file structures. And similarly standard JavaScript object notation in parentheses Json structures. At the other end exist Raw structures compression codex and other processing procedures, and cannot be accessed reliably without thorough knowledge of the source code for napi, or extensive packing and guessing. In the middle exist and number of serialization formats such as Google protobuf format, Thrift, Avril, Captain T, ND growing number of other formats that try to offer flexibility in evolution over time as well as variable levels of self-description and performance. These formats are often to find in simple files and are used by code generators 2 produce computational e efficient code for serialization and D serialization without losing cross platform compatibility or risking rapid deprecation as the needs for the format evolve with the needs of the users. Types can be added to provide new functionality without damaging backwards compatibility. Additionally this model is off in accompanied by a translator herbal component to JavaScript object notation which makes the format ultimately universal in the case of a desperate need for compatibility when performance no longer matters

Tags:
  data, directory, format, programming, serialization
## Data Scaling

This section describes the reality of how data scales as more and more sensors are added. Typically we humans think linearly, but the ramifications of increasing something like sensor size is often exponential. Furthermore, many operations we perform have costs that scale exponentially, and in my humble opinion are not even worth attempting if any such procedure must applied continuously on a data=stream.
## Distributed Dataflow and Streaming




### Language: Is MATLAB the best tool for this job?
- Standard language in many engineering programs
- Proprietary
- Performance
- Compatibility
- Need for a "SandBox"
- Lacks modularity
-

### Alternatives Languages
- Python
- C/C++
- Java/Scala
- Javascript/Node
- GO, Haskell


### Databases


### Big Data
- not exactly\...
- disparate simple queries across

### Computational Models
- Dataflow Processing
- Actors model
- Petri Nets
- Graph Processing
      - i.e. Tensorflow


***

# Information and Informativity

This section presents a background in information theory in the context of behavior sensors and video streams. I further elaborate on what types of information neuroscientists and healthcare providers would hope to extract from these data, focusing on a larger picture of connecting the process of extraction directly the ultimate application.

Whereas previous attempts to process data focus largely on putting it in an intermediate state that is workable with current limitations on computation, visualization, and developer interaction with the data-streams, we now have an opportunity to skip intermediate states and develop with applications in mind.

Transition into compression by showing that previous attempts were essentially compression algorithms developed specifically for the data and preconceived notions about results, but that we can also apply very well developed general compression algorithms, with slight modifications to extract features such as localized bitrate that quantify (in an unbiased way) information content in an selectable region of a video-frame as it changes over time.


***

# Discussion

## Points to Address

-   "Biomimicry" in Visual Processing
    -   This section describes how image and video processing in the computer relate to visual processing in the mammalian brain. The overall goal is to emphasize the advantage and importance of biomimetic development.
    -   Neuromorphic computing
        -   On chip image processing
            -   relation "edge computing"
        -   event-based image sensors
            -   "Artificial retina"
            -   tittto
            -   situations where event streams are advantageous
            -   asynchronous
            -   threshold-based
        -   convolutional neural-nets and deep learning for specific tasks
            -   similarities
            -   differences (substantial)
        -   genetic programming approaches to procedure optimization
            -   minimize latency
            -   maximize sensitivity and accuracy
            -   minimize computational cost
                -   minimize energy expenditure (metabolic efficiency)
    -   Visual stream processing
        -   feature extraction
        -   motion estimation and compensation
    -   Asymmetry of learning/training time and desired inference computation time
-   Common themes across projects
    -   finding common standards
        -   sticking to non-proprietary *open source* conventions
            -   optical parts (lens threads)
            -   file formats
            -   software libraries
            -   programming languages
        -   file transmission
            -   web-based
    -   Borrow from related sectors
        -   better developed in many cases
        -   surveillance
        -   media streaming for web/entertainment
        -   sports
        -   astronomy/telescopes
        -   medical imaging
        -   automotive
    -
<div id="fig:animal-tracking">
![{{subfigcaption(01raw.jpg)}}](img/animal-tracking/01raw.jpg){#fig:01raw.jpg}

![{{subfigcaption(02black-and-white.jpg)}}](img/animal-tracking/02black-and-white.jpg){#fig:02black-and-white.jpg}

![{{subfigcaption(03twoframes.jpg)}}](img/animal-tracking/03twoframes.jpg){#fig:03twoframes.jpg}

![{{subfigcaption(04from_set_of_reference_images_after_processing.tif)}}](img/animal-tracking/04from_set_of_reference_images_after_processing.tif){#fig:04from_set_of_reference_images_after_processing.tif}

![{{subfigcaption(05tail_ID.jpg)}}](img/animal-tracking/05tail_ID.jpg){#fig:05tail_ID.jpg}

![{{subfigcaption(06mousedata1.jpg)}}](img/animal-tracking/06mousedata1.jpg){#fig:06mousedata1.jpg}

![{{subfigcaption(07mousedata1close.jpg)}}](img/animal-tracking/07mousedata1close.jpg){#fig:07mousedata1close.jpg}

![{{subfigcaption(08mousedata2.jpg)}}](img/animal-tracking/08mousedata2.jpg){#fig:08mousedata2.jpg}

![{{subfigcaption(09mousedata1fiberon1.jpg)}}](img/animal-tracking/09mousedata1fiberon1.jpg){#fig:09mousedata1fiberon1.jpg}

![{{subfigcaption(10rotation_viewer.tif)}}](img/animal-tracking/10rotation_viewer.tif){#fig:10rotation_viewer.tif}

{{figcaption(animal-tracking)}}
</div>


<div id="fig:behavior-box">
![{{subfigcaption(01elife-fig2crop.jpg)}}](img/behavior-box/01elife-fig2crop.jpg){#fig:01elife-fig2crop.jpg}

{{figcaption(behavior-box)}}
</div>


<div id="fig:beveled-fiber-bundle">
![{{subfigcaption(fullfield_bundle_overlay.png)}}](img/beveled-fiber-bundle/fullfield_bundle_overlay.png){#fig:fullfield_bundle_overlay.png}

![{{subfigcaption(heightMap_Substack_(1-250).png)}}](img/beveled-fiber-bundle/heightMap_Substack_(1-250).png){#fig:heightMap_Substack_(1-250).png}

![{{subfigcaption(microspheres-1080um.png)}}](img/beveled-fiber-bundle/microspheres-1080um.png){#fig:microspheres-1080um.png}

![{{subfigcaption(microspheres-1102um.png)}}](img/beveled-fiber-bundle/microspheres-1102um.png){#fig:microspheres-1102um.png}

![{{subfigcaption(microspheres-1351um.png)}}](img/beveled-fiber-bundle/microspheres-1351um.png){#fig:microspheres-1351um.png}

![{{subfigcaption(raw_Substack_(1-250).png)}}](img/beveled-fiber-bundle/raw_Substack_(1-250).png){#fig:raw_Substack_(1-250).png}

{{figcaption(beveled-fiber-bundle)}}
</div>


<div id="fig:bin">
![{{subfigcaption(fix-extension-to-lowercase.sh)}}](img/bin/fix-extension-to-lowercase.sh){#fig:fix-extension-to-lowercase.sh}

![{{subfigcaption(replace-spaces-in-filenames-with-underscore.sh)}}](img/bin/replace-spaces-in-filenames-with-underscore.sh){#fig:replace-spaces-in-filenames-with-underscore.sh}

{{figcaption(bin)}}
</div>


<div id="fig:FluoPro">
![{{subfigcaption(cap1.png)}}](img/FluoPro/cap1.png){#fig:cap1.png}

![{{subfigcaption(cap2.png)}}](img/FluoPro/cap2.png){#fig:cap2.png}

![{{subfigcaption(cap3.png)}}](img/FluoPro/cap3.png){#fig:cap3.png}

![{{subfigcaption(diffdemon_motion-corrected_frame_low_correlation_but_fixed_nonetheless_2_.png)}}](img/FluoPro/diffdemon_motion-corrected_frame_low_correlation_but_fixed_nonetheless_2_.png){#fig:diffdemon_motion-corrected_frame_low_correlation_but_fixed_nonetheless_2_.png}

![{{subfigcaption(diffdemon_motion-corrected_frame_low_correlation_but_fixed_nonetheless.png)}}](img/FluoPro/diffdemon_motion-corrected_frame_low_correlation_but_fixed_nonetheless.png){#fig:diffdemon_motion-corrected_frame_low_correlation_but_fixed_nonetheless.png}

![{{subfigcaption(diffdemon_snip_1.png)}}](img/FluoPro/diffdemon_snip_1.png){#fig:diffdemon_snip_1.png}

![{{subfigcaption(Foreground_Detection(1).png)}}](img/FluoPro/Foreground_Detection(1).png){#fig:Foreground_Detection(1).png}

![{{subfigcaption(Foreground_Detection(2).png)}}](img/FluoPro/Foreground_Detection(2).png){#fig:Foreground_Detection(2).png}

![{{subfigcaption(homomorphic_filter_before-after_in_falsecolor.png)}}](img/FluoPro/homomorphic_filter_before-after_in_falsecolor.png){#fig:homomorphic_filter_before-after_in_falsecolor.png}

![{{subfigcaption(homomorphic_filter_before-after_sidebyside.png)}}](img/FluoPro/homomorphic_filter_before-after_sidebyside.png){#fig:homomorphic_filter_before-after_sidebyside.png}

![{{subfigcaption(motion_correction_sample.png)}}](img/FluoPro/motion_correction_sample.png){#fig:motion_correction_sample.png}

![{{subfigcaption(motion_correction_unstable_1.png)}}](img/FluoPro/motion_correction_unstable_1.png){#fig:motion_correction_unstable_1.png}

![{{subfigcaption(RoiGenerator_snip1.png)}}](img/FluoPro/RoiGenerator_snip1.png){#fig:RoiGenerator_snip1.png}

![{{subfigcaption(RoiGenerator_snip2.png)}}](img/FluoPro/RoiGenerator_snip2.png){#fig:RoiGenerator_snip2.png}

![{{subfigcaption(RoiGenerator_snip3.png)}}](img/FluoPro/RoiGenerator_snip3.png){#fig:RoiGenerator_snip3.png}

![{{subfigcaption(RoiGenerator_snip4.png)}}](img/FluoPro/RoiGenerator_snip4.png){#fig:RoiGenerator_snip4.png}

![{{subfigcaption(Semi-Processed_Image_(BLUE),_Overlayed_with_Absolute_X_(RED)_and_Y_(GREEN)_Gradients_Ali26.png)}}](img/FluoPro/Semi-Processed_Image_(BLUE),_Overlayed_with_Absolute_X_(RED)_and_Y_(GREEN)_Gradients_Ali26.png){#fig:Semi-Processed_Image_(BLUE),_Overlayed_with_Absolute_X_(RED)_and_Y_(GREEN)_Gradients_Ali26.png}

{{figcaption(FluoPro)}}
</div>


<div id="fig:headplate-holder">
![{{subfigcaption(drawing-v2.png)}}](img/headplate-holder/drawing-v2.png){#fig:drawing-v2.png}

![{{subfigcaption(HeadplateHolder2_V2.png)}}](img/headplate-holder/HeadplateHolder2_V2.png){#fig:HeadplateHolder2_V2.png}

![{{subfigcaption(HeadplateHolder_V2.png)}}](img/headplate-holder/HeadplateHolder_V2.png){#fig:HeadplateHolder_V2.png}

![{{subfigcaption(photo-bottom.jpg)}}](img/headplate-holder/photo-bottom.jpg){#fig:photo-bottom.jpg}

![{{subfigcaption(photo-front.jpg)}}](img/headplate-holder/photo-front.jpg){#fig:photo-front.jpg}

![{{subfigcaption(photo.jpg)}}](img/headplate-holder/photo.jpg){#fig:photo.jpg}

![{{subfigcaption(photo-top.jpg)}}](img/headplate-holder/photo-top.jpg){#fig:photo-top.jpg}

{{figcaption(headplate-holder)}}
</div>


<div id="fig:microscope">
![{{subfigcaption(50-14-nai-KEN_0053-big.jpg)}}](img/microscope/50-14-nai-KEN_0053-big.jpg){#fig:50-14-nai-KEN_0053-big.jpg}

![{{subfigcaption(7564_CFH2-F_SGL.jpg)}}](img/microscope/7564_CFH2-F_SGL.jpg){#fig:7564_CFH2-F_SGL.jpg}

![{{subfigcaption(setup1.jpg)}}](img/microscope/setup1.jpg){#fig:setup1.jpg}

![{{subfigcaption(setup1-Striatum_Figure1.tif)}}](img/microscope/setup1-Striatum_Figure1.tif){#fig:setup1-Striatum_Figure1.tif}

![{{subfigcaption(setup2.jpg)}}](img/microscope/setup2.jpg){#fig:setup2.jpg}

![{{subfigcaption(setup3-closeup.jpg)}}](img/microscope/setup3-closeup.jpg){#fig:setup3-closeup.jpg}

![{{subfigcaption(setup3-front.jpg)}}](img/microscope/setup3-front.jpg){#fig:setup3-front.jpg}

![{{subfigcaption(setup3-side.jpg)}}](img/microscope/setup3-side.jpg){#fig:setup3-side.jpg}

![{{subfigcaption(setup4-closeup.jpg)}}](img/microscope/setup4-closeup.jpg){#fig:setup4-closeup.jpg}

![{{subfigcaption(setup4-front.jpg)}}](img/microscope/setup4-front.jpg){#fig:setup4-front.jpg}

![{{subfigcaption(setup4-side.jpg)}}](img/microscope/setup4-side.jpg){#fig:setup4-side.jpg}

![{{subfigcaption(widefield_microscope_diagram.png)}}](img/microscope/widefield_microscope_diagram.png){#fig:widefield_microscope_diagram.png}

{{figcaption(microscope)}}
</div>


<div id="fig:monkey-related">
![{{subfigcaption(brain-cranial-window.jpg)}}](img/monkey-related/brain-cranial-window.jpg){#fig:brain-cranial-window.jpg}

![{{subfigcaption(withLight.jpg)}}](img/monkey-related/withLight.jpg){#fig:withLight.jpg}

![{{subfigcaption(withoutLight.jpg)}}](img/monkey-related/withoutLight.jpg){#fig:withoutLight.jpg}

{{figcaption(monkey-related)}}
</div>


<div id="fig:neuromodulation-implant">
![{{subfigcaption(bottom-thorough.tif)}}](img/neuromodulation-implant/bottom-thorough.tif){#fig:bottom-thorough.tif}

![{{subfigcaption(bottom.tif)}}](img/neuromodulation-implant/bottom.tif){#fig:bottom.tif}

![{{subfigcaption(front-thorough.tif)}}](img/neuromodulation-implant/front-thorough.tif){#fig:front-thorough.tif}

![{{subfigcaption(front.tif)}}](img/neuromodulation-implant/front.tif){#fig:front.tif}

![{{subfigcaption(side-thorough.tif)}}](img/neuromodulation-implant/side-thorough.tif){#fig:side-thorough.tif}

![{{subfigcaption(side.tif)}}](img/neuromodulation-implant/side.tif){#fig:side.tif}

![{{subfigcaption(top-thorough.png)}}](img/neuromodulation-implant/top-thorough.png){#fig:top-thorough.png}

![{{subfigcaption(top.tif)}}](img/neuromodulation-implant/top.tif){#fig:top.tif}

{{figcaption(neuromodulation-implant)}}
</div>


<div id="fig:neuromodulation-pcb">
![{{subfigcaption(01pcb_bottom.png)}}](img/neuromodulation-pcb/01pcb_bottom.png){#fig:01pcb_bottom.png}

![{{subfigcaption(02pcb_top.png)}}](img/neuromodulation-pcb/02pcb_top.png){#fig:02pcb_top.png}

![{{subfigcaption(03pcb_combined.png)}}](img/neuromodulation-pcb/03pcb_combined.png){#fig:03pcb_combined.png}

![{{subfigcaption(04pcb_bottom-photo.png)}}](img/neuromodulation-pcb/04pcb_bottom-photo.png){#fig:04pcb_bottom-photo.png}

![{{subfigcaption(05pcb-top-photo.jpg)}}](img/neuromodulation-pcb/05pcb-top-photo.jpg){#fig:05pcb-top-photo.jpg}

{{figcaption(neuromodulation-pcb)}}
</div>


<div id="fig:Pipeline">
![{{subfigcaption(pstep_illumcorrect.png)}}](img/Pipeline/pstep_illumcorrect.png){#fig:pstep_illumcorrect.png}

![{{subfigcaption(pstep_normalizedbasesub.png)}}](img/Pipeline/pstep_normalizedbasesub.png){#fig:pstep_normalizedbasesub.png}

![{{subfigcaption(pstep_raw.png)}}](img/Pipeline/pstep_raw.png){#fig:pstep_raw.png}

![{{subfigcaption(pstep_segmentedALLroi.png)}}](img/Pipeline/pstep_segmentedALLroi.png){#fig:pstep_segmentedALLroi.png}

![{{subfigcaption(pstep_spatialfilter.png)}}](img/Pipeline/pstep_spatialfilter.png){#fig:pstep_spatialfilter.png}

{{figcaption(Pipeline)}}
</div>


<div id="fig:Scicadelic">
![{{subfigcaption(Absolute_Minimum_Pixel_Value_(RED)_vs._Minimum_Estimate_(BLUE).jpg)}}](img/Scicadelic/Absolute_Minimum_Pixel_Value_(RED)_vs._Minimum_Estimate_(BLUE).jpg){#fig:Absolute_Minimum_Pixel_Value_(RED)_vs._Minimum_Estimate_(BLUE).jpg}

![{{subfigcaption(Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION).png)}}](img/Scicadelic/Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION).png){#fig:Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION).png}

![{{subfigcaption(Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames).jpg)}}](img/Scicadelic/Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames).jpg){#fig:Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames).jpg}

![{{subfigcaption(differential_kurtosis1.jpg)}}](img/Scicadelic/differential_kurtosis1.jpg){#fig:differential_kurtosis1.jpg}

![{{subfigcaption(differential_kurtosis2.jpg)}}](img/Scicadelic/differential_kurtosis2.jpg){#fig:differential_kurtosis2.jpg}

![{{subfigcaption(differential_kurtosis3.jpg)}}](img/Scicadelic/differential_kurtosis3.jpg){#fig:differential_kurtosis3.jpg}

![{{subfigcaption(differential_skewness.2jpg.jpg)}}](img/Scicadelic/differential_skewness.2jpg.jpg){#fig:differential_skewness.2jpg.jpg}

![{{subfigcaption(differential_skewness.jpg)}}](img/Scicadelic/differential_skewness.jpg){#fig:differential_skewness.jpg}

![{{subfigcaption(F_segmented_using_2-pUnstable.jpg)}}](img/Scicadelic/F_segmented_using_2-pUnstable.jpg){#fig:F_segmented_using_2-pUnstable.jpg}

![{{subfigcaption(Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1252AM.jpg)}}](img/Scicadelic/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1252AM.jpg){#fig:Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1252AM.jpg}

![{{subfigcaption(Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1256AM.jpg)}}](img/Scicadelic/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1256AM.jpg){#fig:Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1256AM.jpg}

![{{subfigcaption(log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM.jpg)}}](img/Scicadelic/log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM.jpg){#fig:log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM.jpg}

![{{subfigcaption(Motion-induced_BLURRING_of_ROI_with_max-min-mean.png)}}](img/Scicadelic/Motion-induced_BLURRING_of_ROI_with_max-min-mean.png){#fig:Motion-induced_BLURRING_of_ROI_with_max-min-mean.png}

![{{subfigcaption(pUnstable_(mean_gradients_of_fSplit).jpg)}}](img/Scicadelic/pUnstable_(mean_gradients_of_fSplit).jpg){#fig:pUnstable_(mean_gradients_of_fSplit).jpg}

![{{subfigcaption(statistics_of_128_frames_contrast_enhanced.jpg)}}](img/Scicadelic/statistics_of_128_frames_contrast_enhanced.jpg){#fig:statistics_of_128_frames_contrast_enhanced.jpg}

![{{subfigcaption(stat-M3_after_2nd_Chunk_2015Aug12_140AM.jpg)}}](img/Scicadelic/stat-M3_after_2nd_Chunk_2015Aug12_140AM.jpg){#fig:stat-M3_after_2nd_Chunk_2015Aug12_140AM.jpg}

{{figcaption(Scicadelic)}}
</div>


<div id="fig:sfn-poster">
![{{subfigcaption(hc-image306.png)}}](img/sfn-poster/hc-image306.png){#fig:hc-image306.png}

![{{subfigcaption(hc-image332.png)}}](img/sfn-poster/hc-image332.png){#fig:hc-image332.png}

![{{subfigcaption(hc-image3341.png)}}](img/sfn-poster/hc-image3341.png){#fig:hc-image3341.png}

![{{subfigcaption(hc-image336.png)}}](img/sfn-poster/hc-image336.png){#fig:hc-image336.png}

![{{subfigcaption(hc-image342.png)}}](img/sfn-poster/hc-image342.png){#fig:hc-image342.png}

![{{subfigcaption(hc-image345.png)}}](img/sfn-poster/hc-image345.png){#fig:hc-image345.png}

![{{subfigcaption(hc-image348.png)}}](img/sfn-poster/hc-image348.png){#fig:hc-image348.png}

![{{subfigcaption(hc-image363.png)}}](img/sfn-poster/hc-image363.png){#fig:hc-image363.png}

![{{subfigcaption(hc-image366.png)}}](img/sfn-poster/hc-image366.png){#fig:hc-image366.png}

![{{subfigcaption(hc-image375.png)}}](img/sfn-poster/hc-image375.png){#fig:hc-image375.png}

![{{subfigcaption(image338.png)}}](img/sfn-poster/image338.png){#fig:image338.png}

![{{subfigcaption(image341.png)}}](img/sfn-poster/image341.png){#fig:image341.png}

![{{subfigcaption(image378.png)}}](img/sfn-poster/image378.png){#fig:image378.png}

![{{subfigcaption(image381.png)}}](img/sfn-poster/image381.png){#fig:image381.png}

![{{subfigcaption(image3851.png)}}](img/sfn-poster/image3851.png){#fig:image3851.png}

![{{subfigcaption(image387.png)}}](img/sfn-poster/image387.png){#fig:image387.png}

![{{subfigcaption(image3881.png)}}](img/sfn-poster/image3881.png){#fig:image3881.png}

![{{subfigcaption(image390.png)}}](img/sfn-poster/image390.png){#fig:image390.png}

{{figcaption(sfn-poster)}}
</div>


<div id="fig:spherical-treadmill-extended">
![{{subfigcaption(lightson_withsusie.png)}}](img/spherical-treadmill-extended/lightson_withsusie.png){#fig:lightson_withsusie.png}

{{figcaption(spherical-treadmill-extended)}}
</div>


<div id="fig:spherical-treadmill-motion-sensors">
![{{subfigcaption(01-motion-sensors-installed.jpg)}}](img/spherical-treadmill-motion-sensors/01-motion-sensors-installed.jpg){#fig:01-motion-sensors-installed.jpg}

![{{subfigcaption(02-motion-sensors.jpg)}}](img/spherical-treadmill-motion-sensors/02-motion-sensors.jpg){#fig:02-motion-sensors.jpg}

![{{subfigcaption(02-teensy.jpg)}}](img/spherical-treadmill-motion-sensors/02-teensy.jpg){#fig:02-teensy.jpg}

![{{subfigcaption(Striatum_Figure2.png)}}](img/spherical-treadmill-motion-sensors/Striatum_Figure2.png){#fig:Striatum_Figure2.png}

{{figcaption(spherical-treadmill-motion-sensors)}}
</div>


<div id="fig:spherical-treadmill-VR">
![{{subfigcaption(01-treadmill-mouse-running.jpg)}}](img/spherical-treadmill-VR/01-treadmill-mouse-running.jpg){#fig:01-treadmill-mouse-running.jpg}

![{{subfigcaption(02-treadmill-front.jpg)}}](img/spherical-treadmill-VR/02-treadmill-front.jpg){#fig:02-treadmill-front.jpg}

![{{subfigcaption(03-treadmill-top.jpg)}}](img/spherical-treadmill-VR/03-treadmill-top.jpg){#fig:03-treadmill-top.jpg}

![{{subfigcaption(04-VR.tif)}}](img/spherical-treadmill-VR/04-VR.tif){#fig:04-VR.tif}

{{figcaption(spherical-treadmill-VR)}}
</div>


<div id="fig:spherical-treadmill-water-delivery">
![{{subfigcaption(01-water-port.jpg)}}](img/spherical-treadmill-water-delivery/01-water-port.jpg){#fig:01-water-port.jpg}

![{{subfigcaption(02-water-delivery.jpg)}}](img/spherical-treadmill-water-delivery/02-water-delivery.jpg){#fig:02-water-delivery.jpg}

![{{subfigcaption(03-water-delivery-zoom.jpg)}}](img/spherical-treadmill-water-delivery/03-water-delivery-zoom.jpg){#fig:03-water-delivery-zoom.jpg}

{{figcaption(spherical-treadmill-water-delivery)}}
</div>


<div id="fig:SW-2015-09-image-processing-refinement">
![{{subfigcaption(After_Layer_EDGE_Refinement_2015Sep02_201AM.jpg)}}](img/SW-2015-09-image-processing-refinement/After_Layer_EDGE_Refinement_2015Sep02_201AM.jpg){#fig:After_Layer_EDGE_Refinement_2015Sep02_201AM.jpg}

![{{subfigcaption(After_Layer_PEAK_Refinement_2015Sep02_201AM.jpg)}}](img/SW-2015-09-image-processing-refinement/After_Layer_PEAK_Refinement_2015Sep02_201AM.jpg){#fig:After_Layer_PEAK_Refinement_2015Sep02_201AM.jpg}

![{{subfigcaption(After_Layer_PEAK_Refinement_(squaring)_2015Sep02_210AM.jpg)}}](img/SW-2015-09-image-processing-refinement/After_Layer_PEAK_Refinement_(squaring)_2015Sep02_210AM.jpg){#fig:After_Layer_PEAK_Refinement_(squaring)_2015Sep02_210AM.jpg}

![{{subfigcaption(After_Layer_PEAK_Refinement_(using_sign)_2015Sep02_209AM.jpg)}}](img/SW-2015-09-image-processing-refinement/After_Layer_PEAK_Refinement_(using_sign)_2015Sep02_209AM.jpg){#fig:After_Layer_PEAK_Refinement_(using_sign)_2015Sep02_209AM.jpg}

![{{subfigcaption(Before_Layer_Refinement_2015Sep02_201AM.jpg)}}](img/SW-2015-09-image-processing-refinement/Before_Layer_Refinement_2015Sep02_201AM.jpg){#fig:Before_Layer_Refinement_2015Sep02_201AM.jpg}

{{figcaption(SW-2015-09-image-processing-refinement)}}
</div>


<div id="fig:SW-2015-11-batch05-image-processing">
![{{subfigcaption(spatially-adaptive-vs-temporally-adaptive-filter-frame1208.png)}}](img/SW-2015-11-batch05-image-processing/spatially-adaptive-vs-temporally-adaptive-filter-frame1208.png){#fig:spatially-adaptive-vs-temporally-adaptive-filter-frame1208.png}

![{{subfigcaption(spatially-adaptive-vs-temporally-adaptive-filter-frame1213.png)}}](img/SW-2015-11-batch05-image-processing/spatially-adaptive-vs-temporally-adaptive-filter-frame1213.png){#fig:spatially-adaptive-vs-temporally-adaptive-filter-frame1213.png}

![{{subfigcaption(spatially-adaptive-vs-temporally-adaptive-filter-frame1218.png)}}](img/SW-2015-11-batch05-image-processing/spatially-adaptive-vs-temporally-adaptive-filter-frame1218.png){#fig:spatially-adaptive-vs-temporally-adaptive-filter-frame1218.png}

{{figcaption(SW-2015-11-batch05-image-processing)}}
</div>


<div id="fig:SW-2016-01-batch12-image-processing">
![{{subfigcaption(distance-from-bounding-box-corners.png)}}](img/SW-2016-01-batch12-image-processing/distance-from-bounding-box-corners.png){#fig:distance-from-bounding-box-corners.png}

![{{subfigcaption(max-area-log1pabs.png)}}](img/SW-2016-01-batch12-image-processing/max-area-log1pabs.png){#fig:max-area-log1pabs.png}

![{{subfigcaption(max-area-sqrttabs.png)}}](img/SW-2016-01-batch12-image-processing/max-area-sqrttabs.png){#fig:max-area-sqrttabs.png}

![{{subfigcaption(max-relative-centroid-distance.png)}}](img/SW-2016-01-batch12-image-processing/max-relative-centroid-distance.png){#fig:max-relative-centroid-distance.png}

![{{subfigcaption(max-relative-centroid.png)}}](img/SW-2016-01-batch12-image-processing/max-relative-centroid.png){#fig:max-relative-centroid.png}

![{{subfigcaption(mean-area.png)}}](img/SW-2016-01-batch12-image-processing/mean-area.png){#fig:mean-area.png}

![{{subfigcaption(mean-centroid-distance-meanBoundaryDistance-meanArea.png)}}](img/SW-2016-01-batch12-image-processing/mean-centroid-distance-meanBoundaryDistance-meanArea.png){#fig:mean-centroid-distance-meanBoundaryDistance-meanArea.png}

![{{subfigcaption(mean-centroid-distance-real-and-imaginary.png)}}](img/SW-2016-01-batch12-image-processing/mean-centroid-distance-real-and-imaginary.png){#fig:mean-centroid-distance-real-and-imaginary.png}

![{{subfigcaption(min-aera.png)}}](img/SW-2016-01-batch12-image-processing/min-aera.png){#fig:min-aera.png}

![{{subfigcaption(min-area-log1pads-inf-removed.png)}}](img/SW-2016-01-batch12-image-processing/min-area-log1pads-inf-removed.png){#fig:min-area-log1pads-inf-removed.png}

![{{subfigcaption(min-extent-both-distance-corners.png)}}](img/SW-2016-01-batch12-image-processing/min-extent-both-distance-corners.png){#fig:min-extent-both-distance-corners.png}

![{{subfigcaption(min-extent-distance-lowerRight.png)}}](img/SW-2016-01-batch12-image-processing/min-extent-distance-lowerRight.png){#fig:min-extent-distance-lowerRight.png}

![{{subfigcaption(min-extent-distance-upperLeft.png)}}](img/SW-2016-01-batch12-image-processing/min-extent-distance-upperLeft.png){#fig:min-extent-distance-upperLeft.png}

{{figcaption(SW-2016-01-batch12-image-processing)}}
</div>


<div id="fig:SW-2017-08-roi05">
![{{subfigcaption(Screenshot_20170815001718.png)}}](img/SW-2017-08-roi05/Screenshot_20170815001718.png){#fig:Screenshot_20170815001718.png}

![{{subfigcaption(Screenshot_20170816233739.png)}}](img/SW-2017-08-roi05/Screenshot_20170816233739.png){#fig:Screenshot_20170816233739.png}

![{{subfigcaption(Screenshot_20170816234331.png)}}](img/SW-2017-08-roi05/Screenshot_20170816234331.png){#fig:Screenshot_20170816234331.png}

{{figcaption(SW-2017-08-roi05)}}
</div>


<div id="fig:SW-2018-08-batch02-image-processing">
![{{subfigcaption(Screenshot_from_2018-08-04_15-25-55.png)}}](img/SW-2018-08-batch02-image-processing/Screenshot_from_2018-08-04_15-25-55.png){#fig:Screenshot_from_2018-08-04_15-25-55.png}

![{{subfigcaption(Screenshot_from_2018-08-04_15-26-30.png)}}](img/SW-2018-08-batch02-image-processing/Screenshot_from_2018-08-04_15-26-30.png){#fig:Screenshot_from_2018-08-04_15-26-30.png}

![{{subfigcaption(Screenshot_from_2018-08-04_17-10-24.png)}}](img/SW-2018-08-batch02-image-processing/Screenshot_from_2018-08-04_17-10-24.png){#fig:Screenshot_from_2018-08-04_17-10-24.png}

![{{subfigcaption(Screenshot_from_2018-08-04_17-48-26.png)}}](img/SW-2018-08-batch02-image-processing/Screenshot_from_2018-08-04_17-48-26.png){#fig:Screenshot_from_2018-08-04_17-48-26.png}

![{{subfigcaption(Screenshot_from_2018-08-06_04-07-50.png)}}](img/SW-2018-08-batch02-image-processing/Screenshot_from_2018-08-06_04-07-50.png){#fig:Screenshot_from_2018-08-06_04-07-50.png}

![{{subfigcaption(Screenshot_from_2018-08-06_04-32-01.png)}}](img/SW-2018-08-batch02-image-processing/Screenshot_from_2018-08-06_04-32-01.png){#fig:Screenshot_from_2018-08-06_04-32-01.png}

{{figcaption(SW-2018-08-batch02-image-processing)}}
</div>


<div id="fig:SW-sequence-2015-07-seq02">
![{{subfigcaption(frame-10.png)}}](img/SW-sequence-2015-07-seq02/frame-10.png){#fig:frame-10.png}

![{{subfigcaption(frame-13.png)}}](img/SW-sequence-2015-07-seq02/frame-13.png){#fig:frame-13.png}

![{{subfigcaption(frame-26.png)}}](img/SW-sequence-2015-07-seq02/frame-26.png){#fig:frame-26.png}

![{{subfigcaption(frame-42.png)}}](img/SW-sequence-2015-07-seq02/frame-42.png){#fig:frame-42.png}

![{{subfigcaption(frame-45.png)}}](img/SW-sequence-2015-07-seq02/frame-45.png){#fig:frame-45.png}

![{{subfigcaption(frame-46.png)}}](img/SW-sequence-2015-07-seq02/frame-46.png){#fig:frame-46.png}

![{{subfigcaption(frame-47.png)}}](img/SW-sequence-2015-07-seq02/frame-47.png){#fig:frame-47.png}

![{{subfigcaption(frame-48.png)}}](img/SW-sequence-2015-07-seq02/frame-48.png){#fig:frame-48.png}

{{figcaption(SW-sequence-2015-07-seq02)}}
</div>


<div id="fig:SW-sequence-2015-12-seq23">
![{{subfigcaption(frame-101.png)}}](img/SW-sequence-2015-12-seq23/frame-101.png){#fig:frame-101.png}

![{{subfigcaption(frame-112.png)}}](img/SW-sequence-2015-12-seq23/frame-112.png){#fig:frame-112.png}

![{{subfigcaption(frame-2.png)}}](img/SW-sequence-2015-12-seq23/frame-2.png){#fig:frame-2.png}

![{{subfigcaption(frame-34.png)}}](img/SW-sequence-2015-12-seq23/frame-34.png){#fig:frame-34.png}

![{{subfigcaption(frame-50.png)}}](img/SW-sequence-2015-12-seq23/frame-50.png){#fig:frame-50.png}

![{{subfigcaption(frame-6.png)}}](img/SW-sequence-2015-12-seq23/frame-6.png){#fig:frame-6.png}

![{{subfigcaption(frame-80.png)}}](img/SW-sequence-2015-12-seq23/frame-80.png){#fig:frame-80.png}

{{figcaption(SW-sequence-2015-12-seq23)}}
</div>


<div id="fig:SW-sequence-2016-01-seq25">
![{{subfigcaption(frame-01.png)}}](img/SW-sequence-2016-01-seq25/frame-01.png){#fig:frame-01.png}

![{{subfigcaption(frame-05.png)}}](img/SW-sequence-2016-01-seq25/frame-05.png){#fig:frame-05.png}

![{{subfigcaption(frame-08.png)}}](img/SW-sequence-2016-01-seq25/frame-08.png){#fig:frame-08.png}

![{{subfigcaption(frame-10.png)}}](img/SW-sequence-2016-01-seq25/frame-10.png){#fig:frame-10.png}

![{{subfigcaption(frame-16.png)}}](img/SW-sequence-2016-01-seq25/frame-16.png){#fig:frame-16.png}

{{figcaption(SW-sequence-2016-01-seq25)}}
</div>


<div id="fig:SW-sequence-vlcsnap">
![{{subfigcaption(vlcsnap_(1).png)}}](img/SW-sequence-vlcsnap/vlcsnap_(1).png){#fig:vlcsnap_(1).png}

![{{subfigcaption(vlcsnap_(2).png)}}](img/SW-sequence-vlcsnap/vlcsnap_(2).png){#fig:vlcsnap_(2).png}

![{{subfigcaption(vlcsnap_(3).png)}}](img/SW-sequence-vlcsnap/vlcsnap_(3).png){#fig:vlcsnap_(3).png}

![{{subfigcaption(vlcsnap_(4).png)}}](img/SW-sequence-vlcsnap/vlcsnap_(4).png){#fig:vlcsnap_(4).png}

{{figcaption(SW-sequence-vlcsnap)}}
</div>
