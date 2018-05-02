


<!-- TOC -->

- [Chapter - Microscopy](#chapter---microscopy)
      - [DIY Widefield](#diy-widefield)
            - [Cameras](#cameras)
                  - [Scientific CMOS (sCMOS)](#scientific-cmos-scmos)
            - [Filters](#filters)
            - [Lenses](#lenses)
            - [Mechanics](#mechanics)
- [Chapter - Telemetry & Control](#chapter---telemetry-control)
      - [SCADA on the Cheap](#scada-on-the-cheap)
      - [Development boards](#development-boards)
      - [Development Environment](#development-environment)
- [Chapter - Contemporary Video Processing](#chapter---contemporary-video-processing)
      - [Background](#background)
            - [Effective and Efficient Code](#effective-and-efficient-code)
      - [Microscopy and Functional Imaging Two core innovations in available](#microscopy-and-functional-imaging-two-core-innovations-in-available)
      - [Image Processing 1. Computing Power and Connectivity](#image-processing-1-computing-power-and-connectivity)
      - [Big Data](#big-data)
      - [Map-Reduce](#map-reduce)
      - [Image Processing](#image-processing)
      - [Motion Correction Two approaches to find displacement](#motion-correction-two-approaches-to-find-displacement)
            - [Spatially Homogeneous phase correlation](#spatially-homogeneous-phase-correlation)
            - [Triangulate best](#triangulate-best)
      - [Image Enhancement](#image-enhancement)
      - [Feature Extraction](#feature-extraction)
- [Chapter - Acceleration and Optimization Procedures for Online Video Processing](#chapter---acceleration-and-optimization-procedures-for-online-video-processing)
      - [Tutorial](#tutorial)
            - [Incremental Update of Statistics](#incremental-update-of-statistics)
                  - [central moments](#central-moments)
                  - [Extract Features](#extract-features)
- [Chapter - Evaluation of Approach](#chapter---evaluation-of-approach)
      - [Choice of Implementation](#choice-of-implementation)
            - [Language: Is MATLAB the best tool for this job?](#language-is-matlab-the-best-tool-for-this-job)
                  - [Alternatives Languages](#alternatives-languages)
                  - [Alternative Libraries](#alternative-libraries)
      - [Choice of Interface](#choice-of-interface)
            - [Procedural Framework: Pipes, Streams, & Graphs](#procedural-framework-pipes-streams-graphs)
                  - [Concurrency: Parallel = Performance?](#concurrency-parallel-performance)
                  - [Scheduling](#scheduling)
                  - [Adaptive](#adaptive)
      - [Choice of Operations](#choice-of-operations)
            - [Motion Correction](#motion-correction)
                  - [Motion Estimation](#motion-estimation)
                  - [Motion Compensation & Interpolation](#motion-compensation-interpolation)
- [Chapter - Survey of Alternative Strategies](#chapter---survey-of-alternative-strategies)
      - [Implementation](#implementation)
            - [EfficientCode](#efficientcode)
            - [Operation](#operation)
- [Chapter - Compression: as a Tool, a Goal, as an Explanation](#chapter---compression-as-a-tool-a-goal-as-an-explanation)

<!-- /TOC -->

# Chapter - Microscopy

## DIY Widefield

### Cameras

#### Scientific CMOS (sCMOS)
- Correlated double sampling
- HDR
- On-sensor Fusion
- Commercial availability
- 

### Filters

### Lenses

### Mechanics

# Chapter - Telemetry & Control
## SCADA on the Cheap

## Development boards

## Development Environment

# Chapter - Contemporary Video Processing

## Background 

### Effective and Efficient Code
- Background - Microscopy and Functional Imaging - Image Processing

## Microscopy and Functional Imaging Two core innovations in available
- technology 
      1. Synthetic bio (i.e. GCaMP) 
      2. Cameras 
- scientific CMOS

## Image Processing 1. Computing Power and Connectivity 
- Remote Clusters (AWS) 
- Graphics Processing Units (NVIDIA GTX) 
- Embedded Units (NVIDIA Tegra X2) 2. Well developed libraries 
- ImageJ (so so) 
- OpenCV (uses OpenCL) 
- GStreamer (much better) 
- OpenGL 
- Shader

## Big Data 
- not exactly\... 
- disparate simple queries across

## Map-Reduce 
- Dataflow Processing 
- Actors model
- Petri Nets 
- Graph Processing 
      - i.e. Tensorflow

## Image Processing 
- Motion Correction 
- Image Enhancement 

## Motion Correction Two approaches to find displacement
###  Spatially Homogeneous phase correlation
- aka normalized cross correlation - Feature Matching 
- Detect features (i.e. corners) 
### Triangulate best

## Image Enhancement 
1. Contrast - Linear Scaling - Lookup Tables 
2. Spatial and Temporal Filtering 
3. Feature images - Gradients

## Feature Extraction 
1. Feature images (temporally independent)

- Gradients - Surface Curvature 2. Long Term Memory - Statistics
      - changes (single pixel) 
- Mutual information changes (inter-pixel)

# Chapter - Acceleration and Optimization Procedures for Online Video Processing 

## Tutorial

### Incremental Update of Statistics
#### central moments
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
#### Extract Features
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


Simple Processing on GPU
```matlab
      [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(x,m1,m2,m3,m4)
      [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(rowidx,colidx)
```       


# Chapter - Evaluation of Approach 
Video Processing Strategy Thus Far

## Choice of Implementation

### Language: Is MATLAB the best tool for this job?
- Standard language in many engineering programs
- Proprietary
- Performance
- Compatibility
- Need for a "SandBox"
- Lacks modularity
- 

#### Alternatives Languages
- Python
- C/C++
- Java/Scala
- Javascript/Node
- GO, Haskell

#### Alternative Libraries
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
   - 
- FFmpeg
- GStreamer

## Choice of Interface
### Procedural Framework: Pipes, Streams, & Graphs

#### Concurrency: Parallel = Performance?
Not always, no. While concurrent processing of independent tasks or sequentially arriving data elements will almost always increase performance, this is not always the case. At a lower instruction-level than we typically program, synchronous operations can often be optimized in ways that asynchronous operations cannot, typically through strategic register allocation, or by taking cache-hit performance).
"Globally Asynchronous Locally Synchronous"

#### Scheduling

#### Adaptive 

## Choice of Operations
- What is the goal?
- Is it effective?
  - Is the computation cost worth the result?
- Are there side-effects or artifacts?
  - Can they be reliably controlled or accounted for?

### Motion Correction
In our application, the goal of a motion correction operation is to artificially suppress translation of the brain tissue parallel to the image plane. *Phase-Correlation* (also referred to as *normalized cross-correlation*) has consistent performance across a range of image sources with varying spatial noise characteristics. However, a large non-uniform change from reference frames - such as occurs when cells with low baseline fluourescence are first activated - can cause drastic errors that must be recognized and corrected by a supervisory procedure. This can induce an undesirable, unpredicatable, and specifically inopportune latency Unfortunately in all the whole pipeline.

Unfortunately, 
"Globally Asynchronous Locally Synchronous"

as it's In some experimental setups, 

The phase correlation method of 
#### Motion Estimation
- cost: 2-10 ms/frame
- Frequently unstable (depending on video content)

#### Motion Compensation & Interpolation
- cost: 400-800 us/frame
- Requires infill with nearby or prior pixel values if frame size is to be maintained



# Chapter - Survey of Alternative Strategies

## Implementation

### EfficientCode 
- Scalable - Reusable - Make it MODULAR 
- 

### Operation


# Chapter - Compression: as a Tool, a Goal, as an Explanation


