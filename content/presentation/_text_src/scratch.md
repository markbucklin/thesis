
- Video processing: _Batch_ processing _Pipeline_
  - Feature Extraction, Stream Reduction
  - Storage issue: _Stream_ processing _Graph_
- Compression as a Universal Framework
  - ... and a biomarker

![SW-sequence-2015-07-seq02](img/SW-sequence-event-triggered-rgb-overlay.png)<!-- {_class="reveal stretch" } -->

![1](img/1.png)<!-- {_class="reveal stretch"} -->

---

---

![02-water-delivery](img/spherical-treadmill-water-delivery/02-water-delivery.jpg)<!-- {_class="reveal stretch"} -->


---

![3](img/3.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 15-25-55](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-25-55.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 15-26-08](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-08.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 15-26-21](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-21.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 15-26-30](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-30.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 15-26-36](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-36.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 15-26-46](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 15-26-46.png)<!-- {_class="reveal stretch"} -->

---
Orange and Red Gaussian Kurvature



![Screenshot from 2018-08-04 17-47-37](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-47-37.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 17-47-48](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-47-48.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 17-48-26](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-48-26.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot from 2018-08-04 17-48-34](img/sw-video-processing-feature-generation-B/Screenshot from 2018-08-04 17-48-34.png)<!-- {_class="reveal stretch"} -->

---








---

#### Functional connectivity network behavior and behavioral relevance

- Connections across source
- Connections across time

---

### Online Processing

---

#### 1. Storage CRISIS: Data Volume

- Traditional in science labs to store raw data
  - 1 gb/s
- Current capitalization 2 MB/s (16 mb/s)
- Storage capacity is fixed
  - Cumulative

---

#### 2. Information Loss: Opportunites to use expanded perspectives rather than reduced form

- Contrast
  - Linear Scaling
  - Lookup Tables
- Spatial and Temporal Filtering
- "Feature" images
  - Gradients
  - Surface Curvature

---

#### 3. Trend Sensor Performance and Ubiquity are **Exploding**

Two core innovations in available technology

- Molecular Engineering
  - (i.e., GCaMP)
- Cameras
  - scientific CMOS
  - inexpensive "machine vision" cameras

---

#### Feature Extraction is fast

- "Feature" images (temporally independent)
  - Gradients
  - Surface Curvature
- Long Term Memory -> Storage structure
  - Statistics changes (single pixel)
  - Mutual information changes (inter-pixel)
- Continuity

---

#### Graphs identifying network connectivity can be built/updated online

- Facebook
- Google
- Netflix

---

#### Computing Power and Open Software

- Computing Power and Connectivity
  - Remote Clusters (AWS)
  - Graphics Processing Units (NVIDIA GTX)
  - Embedded Units (NVIDIA Tegra X2)
- Well developed libraries
  - SciFio, OpenImageIO, BioFormats
  - OpenCV, OpenVX
  - GStreamer (much better)
  - Shader Language extensions (GLSL, HLSL, Halide)
  - CUDA
- Scalable Computing frameworks

---

#### DataFlow processing model

- Tensorflow

---

#### Standard graphics solutions

- FFmpeg
- GStreamer

---

#### Compression is everything

- Consciousness

---

#### Map-Reduce -> Dataflow Processing

- Actors model
- Petri Nets
- **Graph** Processing
- i.e., Tensorflow

---


##### Incremental Update of Statistics: Algorithm

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

---

##### Extract Feature

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
  dm3 = dm3*sqrt(max(1,n))/(m2^*5);
  dm4 = dm4*n/(m2^2);
end
```

```matlab
  [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(x,m1,m2,m3,m4)

  [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(rowidx,colidx)
```


## Generated


---



---



![bilateral-bw](img/cranial-window/bilateral-bw.png)<!-- {_class="reveal stretch"} -->

---

![early-vs-late-periodic-imaging-sessions](img/cranial-window/early-vs-late-periodic-imaging-sessions.png)<!-- {_class="reveal stretch"} -->

---

![half-year-bw](img/cranial-window/half-year-bw.png)<!-- {_class="reveal stretch"} -->

---

![prototype-model](img/cranial-window/prototype-model.png)<!-- {_class="reveal stretch"} -->

---

![siliskull-over-time](img/cranial-window/siliskull-over-time.png)<!-- {_class="reveal stretch"} -->

---

![HeadplateHolder2_V2](img/headplate-holder/HeadplateHolder2_V2.png)<!-- {_class="reveal stretch"} -->

---

![HeadplateHolder_V2](img/headplate-holder/HeadplateHolder_V2.png)<!-- {_class="reveal stretch"} -->

---

![_photo](img/headplate-holder/_photo.jpg)<!-- {_class="reveal stretch"} -->

---

![drawing-v2](img/headplate-holder/drawing-v2.png)<!-- {_class="reveal stretch"} -->

---

![photo-bottom](img/headplate-holder/photo-bottom.jpg)<!-- {_class="reveal stretch"} -->

---

![photo-front](img/headplate-holder/photo-front.jpg)<!-- {_class="reveal stretch"} -->

---

![photo-top](img/headplate-holder/photo-top.jpg)<!-- {_class="reveal stretch"} -->

---

![filter-slide-thor-CFH2-F](img/microscope/filter-slide-thor-CFH2-F.jpg)<!-- {_class="reveal stretch"} -->
![nikon-50mm-f1_2-lens](img/microscope/nikon-50mm-f1_2-lens.png)<!-- {_class="reveal stretch"} -->

---



![widefield_microscope_diagram](img/microscope/widefield_microscope_diagram.png)<!-- {_class="reveal stretch"} -->

---

![brain-cranial-window](img/monkey-related/brain-cranial-window.jpg)<!-- {_class="reveal stretch"} -->

---

![withLight](img/monkey-related/withLight.jpg)<!-- {_class="reveal stretch"} -->

---

![withoutLight](img/monkey-related/withoutLight.jpg)<!-- {_class="reveal stretch"} -->

---

![top-thorough](img/neuromodulation-implant/top-thorough.png)<!-- {_class="reveal stretch"} -->

---

![01pcb_bottom](img/neuromodulation-pcb/01pcb_bottom.png)<!-- {_class="reveal stretch"} -->

---

![02pcb_top](img/neuromodulation-pcb/02pcb_top.png)<!-- {_class="reveal stretch"} -->

---

![03pcb_combined](img/neuromodulation-pcb/03pcb_combined.png)<!-- {_class="reveal stretch"} -->

---

![04pcb_bottom-photo](img/neuromodulation-pcb/04pcb_bottom-photo.png)<!-- {_class="reveal stretch"} -->

---

![05pcb-top-photo](img/neuromodulation-pcb/05pcb-top-photo.jpg)<!-- {_class="reveal stretch"} -->


---




![RoiGenerator_snip1](img/sw-fluopro/RoiGenerator_snip1.png)<!-- {_class="reveal stretch"} -->

---

![RoiGenerator_snip2](img/sw-fluopro/RoiGenerator_snip2.png)<!-- {_class="reveal stretch"} -->

---

![RoiGenerator_snip3](img/sw-fluopro/RoiGenerator_snip3.png)<!-- {_class="reveal stretch"} -->

---

![RoiGenerator_snip4](img/sw-fluopro/RoiGenerator_snip4.png)<!-- {_class="reveal stretch"} -->

---

![cap1](img/sw-fluopro/cap1.png)<!-- {_class="reveal stretch"} -->

---

![cap2](img/sw-fluopro/cap2.png)<!-- {_class="reveal stretch"} -->

---

![cap3](img/sw-fluopro/cap3.png)<!-- {_class="reveal stretch"} -->

---

![homomorphic_filter_before-after_sidebyside](img/sw-fluopro/homomorphic_filter_before-after_sidebyside.png)<!-- {_class="reveal stretch"} -->

---

![motion_correction_sample](img/sw-fluopro/motion_correction_sample.png)<!-- {_class="reveal stretch"} -->

---

![spatial-gradient-overlay](img/sw-fluopro/spatial-gradient-overlay.png)<!-- {_class="reveal stretch"} -->

---

![HipassGreen](img/sw-homomorphic-filter/HipassGreen.png)<!-- {_class="reveal stretch"} -->

---

![HipassLopassFusion](img/sw-homomorphic-filter/HipassLopassFusion.png)<!-- {_class="reveal stretch"} -->

---

![LopassBlue](img/sw-homomorphic-filter/LopassBlue.png)<!-- {_class="reveal stretch"} -->

---

![highpass](img/sw-homomorphic-filter/highpass.png)<!-- {_class="reveal stretch"} -->

---

![highpass_scaled](img/sw-homomorphic-filter/highpass_scaled.png)<!-- {_class="reveal stretch"} -->

---

![input](img/sw-homomorphic-filter/input.png)<!-- {_class="reveal stretch"} -->

---

![input_scaled](img/sw-homomorphic-filter/input_scaled.png)<!-- {_class="reveal stretch"} -->

---

![loginput](img/sw-homomorphic-filter/loginput.png)<!-- {_class="reveal stretch"} -->

---

![loginput_scaled](img/sw-homomorphic-filter/loginput_scaled.png)<!-- {_class="reveal stretch"} -->

---

![logoutput](img/sw-homomorphic-filter/logoutput.png)<!-- {_class="reveal stretch"} -->

---

![logoutput_scaled](img/sw-homomorphic-filter/logoutput_scaled.png)<!-- {_class="reveal stretch"} -->

---

![lowpass](img/sw-homomorphic-filter/lowpass.png)<!-- {_class="reveal stretch"} -->

---

![lowpass_scaled](img/sw-homomorphic-filter/lowpass_scaled.png)<!-- {_class="reveal stretch"} -->

---

![output](img/sw-homomorphic-filter/output.png)<!-- {_class="reveal stretch"} -->

---

![output_scaled](img/sw-homomorphic-filter/output_scaled.png)<!-- {_class="reveal stretch"} -->

---

![scaledinput](img/sw-homomorphic-filter/scaledinput.png)<!-- {_class="reveal stretch"} -->

---

![scaledinput_scaled](img/sw-homomorphic-filter/scaledinput_scaled.png)<!-- {_class="reveal stretch"} -->

---

![pstep_illumcorrect](img/sw-pipeline-image-preprocessing/pstep_illumcorrect.png)<!-- {_class="reveal stretch"} -->

---

![pstep_normalizedbasesub](img/sw-pipeline-image-preprocessing/pstep_normalizedbasesub.png)<!-- {_class="reveal stretch"} -->

---

![pstep_raw](img/sw-pipeline-image-preprocessing/pstep_raw.png)<!-- {_class="reveal stretch"} -->

---

![pstep_segmentedALLroi](img/sw-pipeline-image-preprocessing/pstep_segmentedALLroi.png)<!-- {_class="reveal stretch"} -->

---

![pstep_spatialfilter](img/sw-pipeline-image-preprocessing/pstep_spatialfilter.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_20170815001718](img/sw-roi-gui-traces/Screenshot_20170815001718.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_20170816233739](img/sw-roi-gui-traces/Screenshot_20170816233739.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_20170816234331](img/sw-roi-gui-traces/Screenshot_20170816234331.png)<!-- {_class="reveal stretch"} -->

---

![sw-sequence-bw](img/sw-sequence-bw.png)<!-- {_class="reveal stretch"} -->

---

![distance-from-bounding-box-corners](img/sw-video-processing-feature-generation-A/distance-from-bounding-box-corners.png)<!-- {_class="reveal stretch"} -->

---

![max-area-log1pabs](img/sw-video-processing-feature-generation-A/max-area-log1pabs.png)<!-- {_class="reveal stretch"} -->

---

![max-area-sqrttabs](img/sw-video-processing-feature-generation-A/max-area-sqrttabs.png)<!-- {_class="reveal stretch"} -->

---

![max-relative-centroid-distance](img/sw-video-processing-feature-generation-A/max-relative-centroid-distance.png)<!-- {_class="reveal stretch"} -->

---

![max-relative-centroid](img/sw-video-processing-feature-generation-A/max-relative-centroid.png)<!-- {_class="reveal stretch"} -->

---

![mean-area](img/sw-video-processing-feature-generation-A/mean-area.png)<!-- {_class="reveal stretch"} -->

---

![mean-centroid-distance-meanBoundaryDistance-meanArea](img/sw-video-processing-feature-generation-A/mean-centroid-distance-meanBoundaryDistance-meanArea.png)<!-- {_class="reveal stretch"} -->

---

![mean-centroid-distance-real-and-imaginary](img/sw-video-processing-feature-generation-A/mean-centroid-distance-real-and-imaginary.png)<!-- {_class="reveal stretch"} -->

---

![min-area-log1pads-inf-removed](img/sw-video-processing-feature-generation-A/min-area-log1pads-inf-removed.png)<!-- {_class="reveal stretch"} -->

---

![min-area](img/sw-video-processing-feature-generation-A/min-area.png)<!-- {_class="reveal stretch"} -->

---

![min-extent-both-distance-corners](img/sw-video-processing-feature-generation-A/min-extent-both-distance-corners.png)<!-- {_class="reveal stretch"} -->

---

![min-extent-distance-lowerRight](img/sw-video-processing-feature-generation-A/min-extent-distance-lowerRight.png)<!-- {_class="reveal stretch"} -->

---

![min-extent-distance-upperLeft](img/sw-video-processing-feature-generation-A/min-extent-distance-upperLeft.png)<!-- {_class="reveal stretch"} -->

---


![Screenshot_from_2018-08-04_15-25-55](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_15-25-55.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-04_15-26-30](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_15-26-30.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-04_17-10-24](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_17-10-24.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-04_17-48-26](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_17-48-26.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-06_04-07-50](img/sw-video-processing-segmentation/Screenshot_from_2018-08-06_04-07-50.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-06_04-32-01](img/sw-video-processing-segmentation/Screenshot_from_2018-08-06_04-32-01.png)<!-- {_class="reveal stretch"} -->

---








![sw-video-processing-spatial-peak-activity-metric](img/sw-video-processing-spatial-peak-activity-metric.png)<!-- {_class="reveal stretch"} -->

---

![spatially-adaptive-vs-temporally-adaptive-filter-frame1208](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1208.png)<!-- {_class="reveal stretch"} -->

---

![spatially-adaptive-vs-temporally-adaptive-filter-frame1213](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1213.png)<!-- {_class="reveal stretch"} -->

---

![spatially-adaptive-vs-temporally-adaptive-filter-frame1218](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1218.png)<!-- {_class="reveal stretch"} -->

---

![sw-video-processing-spatially-vs-temporally-adaptive-filter](img/sw-video-processing-spatially-vs-temporally-adaptive-filter.png)<!-- {_class="reveal stretch"} -->

---

![Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION)](img/sw-video-statistics/Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION).png)<!-- {_class="reveal stretch"} -->

---

![Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames)](img/sw-video-statistics/Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames).jpg)<!-- {_class="reveal stretch"} -->

---

![F_segmented_using_2-pUnstable](img/sw-video-statistics/F_segmented_using_2-pUnstable.jpg)<!-- {_class="reveal stretch"} -->

---

![Hybrid-Median-Filter_vs](img/sw-video-statistics/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1252AM.jpg)<!-- {_class="reveal stretch"} -->

---

![Hybrid-Median-Filter_vs](img/sw-video-statistics/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1256AM.jpg)<!-- {_class="reveal stretch"} -->

---

![Motion-induced_BLURRING_of_ROI_with_max-min-mean](img/sw-video-statistics/Motion-induced_BLURRING_of_ROI_with_max-min-mean.png)<!-- {_class="reveal stretch"} -->

---

![differential_kurtosis1](img/sw-video-statistics/differential_kurtosis1.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_kurtosis2](img/sw-video-statistics/differential_kurtosis2.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_kurtosis3](img/sw-video-statistics/differential_kurtosis3.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_skewness](img/sw-video-statistics/differential_skewness.2jpg.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_skewness](img/sw-video-statistics/differential_skewness.jpg)<!-- {_class="reveal stretch"} -->

---

![log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM](img/sw-video-statistics/log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM.jpg)<!-- {_class="reveal stretch"} -->

---

![pUnstable_(mean_gradients_of_fSplit)](img/sw-video-statistics/pUnstable_(mean_gradients_of_fSplit).jpg)<!-- {_class="reveal stretch"} -->

---

![stat-M3_after_2nd_Chunk_2015Aug12_140AM](img/sw-video-statistics/stat-M3_after_2nd_Chunk_2015Aug12_140AM.jpg)<!-- {_class="reveal stretch"} -->

---

![statistics_of_128_frames_contrast_enhanced](img/sw-video-statistics/statistics_of_128_frames_contrast_enhanced.jpg)<!-- {_class="reveal stretch"} -->

---


## Microscope Construction




---

### Standards




---

---

## Multispectral Imaging

---

### Filter Selection

![bd-spectra](img/spectra.png)<!-- {_class="reveal stretch"} -->

---

### Lenses

---

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

---

## Electronics

---

### Photosensors

---

## Cameras

This section details the evolution of cameras sensors and other sensors that provide bio-relevant data. Emphasis is on

---

### Scientific CMOS (sCMOS)

-   Correlated double sampling
-   HDR
-   On-sensor Fusion
-   Commercial availability

---

### Data-Transfer (Camera Interfaces)

-   USB
-   CameraLink
-   COaXPress
-   PCIe
    -   gen2, gen3
    -   x4, x8
    -   copper, fiber

---

## Image Acquisition

-   Libraries
-   Camera configuration
-   Windows vs. Linux
-   Setup and programming <!-- matrix vision has an amazing manual -->

---

## Image Data Management

Goal: maximize potential for *reuse*
1. by other scientists, or other healthcare providers
2. by **you** in the future

Critical considerations:
-   Storage format
-   Storage location
-   Maintaining record of provenance

...unfortunately no straightforward

---

- Varying performance requirements:
  - storage efficiency (size after compression)
  - storage efficiency (speed of compression) [^intentional resuse of the same descriptor`]

---

## Sensors

### Remarkably inexpensive

1. The **Intan** board
2. **StimDUINO**
3. etc.

### Widely Available

Development boards
- Arduino
- Launchpad (Texas Instruments)
- STM32
- Teensy (ARM Cortex M4)
<!-- todo:insert table and pictures -->


---

<!-- Wide-field epifluorescence imaging of a living brain has substantially
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
cortical neurons in awake mice. -->


## Fabricate an Optical Interface




### Cranial window system

Requirement for:

1.  Long-term maintenance of optical quality
1.  Easy and repeatable tissue accessibility

Goal:

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




---

## Methods and Approach

Image processing is performed offline using MATLAB software. The goal of this procedure is to reduce the raw image sequence to a collection of one-dimensional traces, where each trace indicates the fluorescence intensity of an individual neuron over time, and the collection approximates the distinct activity of each and every neuron in the microscope's field of view. We implement the process in 3 distinct stages as described below. The main novel contribution of this work is the efficient extension of segmented ROIs into the third dimension by clustering features of ROIs segmented separately in two dimensions. Online processing uses a similar approach, and the differences are explained in the next section.


---

### Image Pre-processing: Contrast Enhancement and Motion Correction

Alignment of each frame in the image sequence with all other frames is essential to the methods we use in subsequent steps for identifying and tracking cells over time. Thus, the goal of the first stage is to correct for any misalignment caused by movement of the brain relative to the microscope and camera.

Many algorithms for estimating and correcting image displacement exist and are well described in the medical imaging literature. We elected to use phase-correlation to estimate the induced motion in each frame, as we found this method to be highly stable, moderately accurate, and (most importantly) fast, especially when implemented in the frequency domain and using a decent graphics card.

Phase-correlation estimates the mean translational displacement between two frames, one being the template or "fixed" frame, and the other being the uncorrected or "moving" frame. In the spatial domain this is accomplished by computing the normalized cross-correlation, which implies a 2-dimensional convolution of large matrices. The equivalent operation in the frequency domain is a simple scalar dot-product of the discrete Fourier transforms of each image normalized by the square of the template, followed by the inverse Fourier transform. The intermediate result is the cross-correlation (or phase-correlation) matrix, which should have a peak in its center for correctly aligned images, or a peak near the center, the offset of which indicates the mean offset between the two images. This peak can be found with subpixel precision by interpolation to give a more accurate alignment, although at some moderate expense in computation time.

For the template image we used a moving average of previously aligned frames when processing frames sequentially, or alternatively a fixed mean of randomly sampled and sequentially aligned images from the entire set when processing files in parallel. The simplest way to perform this operation is to use the built-in MATLAB function normxcorr2, which makes optimization decisions based on image size and available hardware automatically. However, performance can be improved by tailoring the operation to your particular hardware and image size, i.e. using fft2 and ifft2 for large images and a good graphics card.

---

### Region of Interest (ROI) identification & segmentation

The ROI detection process used an adaptive threshold on the z-score of pixel intensity to reduce each frame to binary 1's and 0's (logical true or false). These binary frames were then processed using morphological operations to find and label connected components within each frame. For example, beginning with a z-score threshold of 1.5, all pixels that were more than 1.5 standard deviations above their mean were reduced to 1 (true), and all others reduced to 0 (false). Pixels reduced to 1 were often pixels overlying a cell that was significantly brighter during that frame due to activation of GCaMP. This initial threshold was adjusted up or down based on the number of non-zero pixels detected with each threshold. This was done to prevent spurious motion-induced shifts of the image frame from producing ROIs along high contrast borders. All morphological operations were performed using built-in MATLAB functions from the Image Processing Toolbox, which have fast parallel versions if the operation is run on a graphics card (e.g. imclose, imopen, etc.). Furthermore, the connected-component labeling and region formation operations were run using built-in MATLAB functions bwconncomp, and regionprops. Connected components were stored in a custom class and termed "single-frame ROIs," and these were then passed to the 3rd stage of processing, which merges them into a "multi-frame ROI" that represents the location and spatial distribution of each cell identified over the entire video.

---

### Region of Interest (ROI) merging

The standard structure of region properties output by the MATLAB function regionprops (Area, BoundingBox, Centroid, etc.) are mimicked in a custom class called RegionOfInterest, where each field of the structure becomes a property of the custom class. We add additional properties for storing state information and data associated with each ROI, along with a number of methods for comparing, merging, manipulating, and visualizing the single-frame and multi-frame ROIs. The single-frame to multi-frame ROI merging procedure is essentially a clustering process that merges single-frame ROIs together using such criteria as the proximity of their centroids, as well as proximity of their bounding-box (upper-left and lower-right corners). Performing this operation quickly was highly dependent on pre-grouping ROIs based on centroid location in overlapping blocks of the image frame, as well as grouping by size. This enabled the clustering to be performed in parallel (across CPU cores) followed by a second iteration of clustering to deal with redundancy in overlapping regions.

---

### Visualization

Once ROIs are established, all video data is reloaded and passed to a method in the _RegionOfInterest_ class that extracts the 1-dimensional trace for each ROI representing the fluorescence intensity in that region over time. The ROIs and their traces can then be interactively visualized using another method in the _RegionOfInterest_ class.

The _RegionOfInterest_ class defines methods for rapid spatial comparison operations which can typically be viewed as an adjacency matrix using built-in image viewing commands. Visualization of the segmented cell overlay and 1D traces can be manipulated by assigning colors, removing ROIs, hiding ROIs, and more.

---

### Predicting Activation State & Assessing Network Activity

The continuous signal intensity signals can be reduced to binary indicators of activity for each frame. This enables simplified and fast calculation of information theory measures, such as activation probability, joint and conditional probabilities, response entropy, mutual information, etc. The conversion from continuous to binary uses several abstractions of the signal applied to a Gaussian Mixture Model (GMM). The abstractions are calculated from the following:

1.  Linear least-squares fits to moving windows with variable size to find slope of the line surrounding each point.

2.  Skewness and Kurtosis of finite windows surrounding each data point.

3.  Temporal difference of fluorescence intensity.

The gaussian mixture model employs all measures to infer periods of reliable distinct activation of neurons.

---

### Parallel Processing

Many built-in MATLAB functions are implemented using efficient multi-threaded procedures, and these are used to the extent that they can be. However, for procedures that must operate on data in irregular formats (i.e. any format other than N-dimensional arrays of primitive data types), one also has the option of performing explicitly defined parallel operations by distributing data across multiple parallel processes, each with their own memory space. Below I give examples of how implementing in a multi-threaded fashion can substantially boost performance, and also an example of a situation where multi-threaded operations aren't possible without explicit calls for parallel distribution.

Standard elementwise operators like _plus_ (+) and _times_ (.\*), as well as comparison operators like _equals_ (==) and _less-than_ (&lt;) will be performed efficiently using as many processing cores as available when applied to large n-dimensional arrays of the same size. However, when operand sizes differ a simple call to the built-in operation will not work. For example, if we wish to subtract the average from each pixel over time from all frames in the series we can accomplish this with a call to MATLAB's _bsxfun_ function, which stands for Binary-Singleton-eXpansion-FUNction, as shown below:

```matlab

      Fmeansub = bsxfun( @minus, F, mean(F,3) );

```

This operation passes a function handle as the first argument (denoted by the '@' symbol) indicating the operation to perform. It then passes the entire \[IxJxK\] array of image data as the second argument, and it's temporal mean with size \[IxJx1\] is calculated once and passed as the third. The function efficiently expands the mean argument as needed for fast distribution across parallel threads.


---


---

#### Functional connectivity network behavior and behavioral relevance

- Connections across source
- Connections across time

---

### Online Processing

---

#### 1. Storage CRISIS: Data Volume

- Traditional in science labs to store raw data
  - 1 gb/s
- Current capitalization 2 MB/s (16 mb/s)
- Storage capacity is fixed
  - Cumulative

---

#### 2. Information Loss: Opportunites to use expanded perspectives rather than reduced form

- Contrast
  - Linear Scaling
  - Lookup Tables
- Spatial and Temporal Filtering
- "Feature" images
  - Gradients
  - Surface Curvature

---

#### 3. Trend Sensor Performance and Ubiquity are **Exploding**

Two core innovations in available technology

- Molecular Engineering
  - (i.e., GCaMP)
- Cameras
  - scientific CMOS
  - inexpensive "machine vision" cameras

---

#### Feature Extraction is fast

- "Feature" images (temporally independent)
  - Gradients
  - Surface Curvature
- Long Term Memory -> Storage structure
  - Statistics changes (single pixel)
  - Mutual information changes (inter-pixel)
- Continuity

---

#### Graphs identifying network connectivity can be built/updated online

- Facebook
- Google
- Netflix

---

#### Computing Power and Open Software

- Computing Power and Connectivity
  - Remote Clusters (AWS)
  - Graphics Processing Units (NVIDIA GTX)
  - Embedded Units (NVIDIA Tegra X2)
- Well developed libraries
  - SciFio, OpenImageIO, BioFormats
  - OpenCV, OpenVX
  - GStreamer (much better)
  - Shader Language extensions (GLSL, HLSL, Halide)
  - CUDA
- Scalable Computing frameworks

---

#### DataFlow processing model

- Tensorflow

---

#### Standard graphics solutions

- FFmpeg
- GStreamer

---

#### Compression is everything

- Consciousness

---

#### Map-Reduce -> Dataflow Processing

- Actors model
- Petri Nets
- **Graph** Processing
- i.e., Tensorflow

---


##### Incremental Update of Statistics: Algorithm

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

---

##### Extract Feature

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
  dm3 = dm3*sqrt(max(1,n))/(m2^*5);
  dm4 = dm4*n/(m2^2);
end
```

```matlab
  [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(x,m1,m2,m3,m4)

  [dm1,dm2,dm3,dm4] = arrayfun(@getStatisticUpdate(rowidx,colidx)
```


## Generated


---



---



![bilateral-bw](img/cranial-window/bilateral-bw.png)<!-- {_class="reveal stretch"} -->

---

![early-vs-late-periodic-imaging-sessions](img/cranial-window/early-vs-late-periodic-imaging-sessions.png)<!-- {_class="reveal stretch"} -->

---

![half-year-bw](img/cranial-window/half-year-bw.png)<!-- {_class="reveal stretch"} -->

---

![prototype-model](img/cranial-window/prototype-model.png)<!-- {_class="reveal stretch"} -->

---

![siliskull-over-time](img/cranial-window/siliskull-over-time.png)<!-- {_class="reveal stretch"} -->

---

![HeadplateHolder2_V2](img/headplate-holder/HeadplateHolder2_V2.png)<!-- {_class="reveal stretch"} -->

---

![HeadplateHolder_V2](img/headplate-holder/HeadplateHolder_V2.png)<!-- {_class="reveal stretch"} -->

---

![_photo](img/headplate-holder/_photo.jpg)<!-- {_class="reveal stretch"} -->

---

![drawing-v2](img/headplate-holder/drawing-v2.png)<!-- {_class="reveal stretch"} -->

---

![photo-bottom](img/headplate-holder/photo-bottom.jpg)<!-- {_class="reveal stretch"} -->

---

![photo-front](img/headplate-holder/photo-front.jpg)<!-- {_class="reveal stretch"} -->

---

![photo-top](img/headplate-holder/photo-top.jpg)<!-- {_class="reveal stretch"} -->

---

![filter-slide-thor-CFH2-F](img/microscope/filter-slide-thor-CFH2-F.jpg)<!-- {_class="reveal stretch"} -->
![nikon-50mm-f1_2-lens](img/microscope/nikon-50mm-f1_2-lens.png)<!-- {_class="reveal stretch"} -->

---



![widefield_microscope_diagram](img/microscope/widefield_microscope_diagram.png)<!-- {_class="reveal stretch"} -->

---

![brain-cranial-window](img/monkey-related/brain-cranial-window.jpg)<!-- {_class="reveal stretch"} -->

---

![withLight](img/monkey-related/withLight.jpg)<!-- {_class="reveal stretch"} -->

---

![withoutLight](img/monkey-related/withoutLight.jpg)<!-- {_class="reveal stretch"} -->

---

![top-thorough](img/neuromodulation-implant/top-thorough.png)<!-- {_class="reveal stretch"} -->

---

![01pcb_bottom](img/neuromodulation-pcb/01pcb_bottom.png)<!-- {_class="reveal stretch"} -->

---

![02pcb_top](img/neuromodulation-pcb/02pcb_top.png)<!-- {_class="reveal stretch"} -->

---

![03pcb_combined](img/neuromodulation-pcb/03pcb_combined.png)<!-- {_class="reveal stretch"} -->

---

![04pcb_bottom-photo](img/neuromodulation-pcb/04pcb_bottom-photo.png)<!-- {_class="reveal stretch"} -->

---

![05pcb-top-photo](img/neuromodulation-pcb/05pcb-top-photo.jpg)<!-- {_class="reveal stretch"} -->


---




![RoiGenerator_snip1](img/sw-fluopro/RoiGenerator_snip1.png)<!-- {_class="reveal stretch"} -->

---

![RoiGenerator_snip2](img/sw-fluopro/RoiGenerator_snip2.png)<!-- {_class="reveal stretch"} -->

---

![RoiGenerator_snip3](img/sw-fluopro/RoiGenerator_snip3.png)<!-- {_class="reveal stretch"} -->

---

![RoiGenerator_snip4](img/sw-fluopro/RoiGenerator_snip4.png)<!-- {_class="reveal stretch"} -->

---

![cap1](img/sw-fluopro/cap1.png)<!-- {_class="reveal stretch"} -->

---

![cap2](img/sw-fluopro/cap2.png)<!-- {_class="reveal stretch"} -->

---

![cap3](img/sw-fluopro/cap3.png)<!-- {_class="reveal stretch"} -->

---

![homomorphic_filter_before-after_sidebyside](img/sw-fluopro/homomorphic_filter_before-after_sidebyside.png)<!-- {_class="reveal stretch"} -->

---

![motion_correction_sample](img/sw-fluopro/motion_correction_sample.png)<!-- {_class="reveal stretch"} -->

---

![spatial-gradient-overlay](img/sw-fluopro/spatial-gradient-overlay.png)<!-- {_class="reveal stretch"} -->

---

![HipassGreen](img/sw-homomorphic-filter/HipassGreen.png)<!-- {_class="reveal stretch"} -->

---

![HipassLopassFusion](img/sw-homomorphic-filter/HipassLopassFusion.png)<!-- {_class="reveal stretch"} -->

---

![LopassBlue](img/sw-homomorphic-filter/LopassBlue.png)<!-- {_class="reveal stretch"} -->

---

![highpass](img/sw-homomorphic-filter/highpass.png)<!-- {_class="reveal stretch"} -->

---

![highpass_scaled](img/sw-homomorphic-filter/highpass_scaled.png)<!-- {_class="reveal stretch"} -->

---

![input](img/sw-homomorphic-filter/input.png)<!-- {_class="reveal stretch"} -->

---

![input_scaled](img/sw-homomorphic-filter/input_scaled.png)<!-- {_class="reveal stretch"} -->

---

![loginput](img/sw-homomorphic-filter/loginput.png)<!-- {_class="reveal stretch"} -->

---

![loginput_scaled](img/sw-homomorphic-filter/loginput_scaled.png)<!-- {_class="reveal stretch"} -->

---

![logoutput](img/sw-homomorphic-filter/logoutput.png)<!-- {_class="reveal stretch"} -->

---

![logoutput_scaled](img/sw-homomorphic-filter/logoutput_scaled.png)<!-- {_class="reveal stretch"} -->

---

![lowpass](img/sw-homomorphic-filter/lowpass.png)<!-- {_class="reveal stretch"} -->

---

![lowpass_scaled](img/sw-homomorphic-filter/lowpass_scaled.png)<!-- {_class="reveal stretch"} -->

---

![output](img/sw-homomorphic-filter/output.png)<!-- {_class="reveal stretch"} -->

---

![output_scaled](img/sw-homomorphic-filter/output_scaled.png)<!-- {_class="reveal stretch"} -->

---

![scaledinput](img/sw-homomorphic-filter/scaledinput.png)<!-- {_class="reveal stretch"} -->

---

![scaledinput_scaled](img/sw-homomorphic-filter/scaledinput_scaled.png)<!-- {_class="reveal stretch"} -->

---

![pstep_illumcorrect](img/sw-pipeline-image-preprocessing/pstep_illumcorrect.png)<!-- {_class="reveal stretch"} -->

---

![pstep_normalizedbasesub](img/sw-pipeline-image-preprocessing/pstep_normalizedbasesub.png)<!-- {_class="reveal stretch"} -->

---

![pstep_raw](img/sw-pipeline-image-preprocessing/pstep_raw.png)<!-- {_class="reveal stretch"} -->

---

![pstep_segmentedALLroi](img/sw-pipeline-image-preprocessing/pstep_segmentedALLroi.png)<!-- {_class="reveal stretch"} -->

---

![pstep_spatialfilter](img/sw-pipeline-image-preprocessing/pstep_spatialfilter.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_20170815001718](img/sw-roi-gui-traces/Screenshot_20170815001718.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_20170816233739](img/sw-roi-gui-traces/Screenshot_20170816233739.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_20170816234331](img/sw-roi-gui-traces/Screenshot_20170816234331.png)<!-- {_class="reveal stretch"} -->

---

![sw-sequence-bw](img/sw-sequence-bw.png)<!-- {_class="reveal stretch"} -->

---

![distance-from-bounding-box-corners](img/sw-video-processing-feature-generation-A/distance-from-bounding-box-corners.png)<!-- {_class="reveal stretch"} -->

---

![max-area-log1pabs](img/sw-video-processing-feature-generation-A/max-area-log1pabs.png)<!-- {_class="reveal stretch"} -->

---

![max-area-sqrttabs](img/sw-video-processing-feature-generation-A/max-area-sqrttabs.png)<!-- {_class="reveal stretch"} -->

---

![max-relative-centroid-distance](img/sw-video-processing-feature-generation-A/max-relative-centroid-distance.png)<!-- {_class="reveal stretch"} -->

---

![max-relative-centroid](img/sw-video-processing-feature-generation-A/max-relative-centroid.png)<!-- {_class="reveal stretch"} -->

---

![mean-area](img/sw-video-processing-feature-generation-A/mean-area.png)<!-- {_class="reveal stretch"} -->

---

![mean-centroid-distance-meanBoundaryDistance-meanArea](img/sw-video-processing-feature-generation-A/mean-centroid-distance-meanBoundaryDistance-meanArea.png)<!-- {_class="reveal stretch"} -->

---

![mean-centroid-distance-real-and-imaginary](img/sw-video-processing-feature-generation-A/mean-centroid-distance-real-and-imaginary.png)<!-- {_class="reveal stretch"} -->

---

![min-area-log1pads-inf-removed](img/sw-video-processing-feature-generation-A/min-area-log1pads-inf-removed.png)<!-- {_class="reveal stretch"} -->

---

![min-area](img/sw-video-processing-feature-generation-A/min-area.png)<!-- {_class="reveal stretch"} -->

---

![min-extent-both-distance-corners](img/sw-video-processing-feature-generation-A/min-extent-both-distance-corners.png)<!-- {_class="reveal stretch"} -->

---

![min-extent-distance-lowerRight](img/sw-video-processing-feature-generation-A/min-extent-distance-lowerRight.png)<!-- {_class="reveal stretch"} -->

---

![min-extent-distance-upperLeft](img/sw-video-processing-feature-generation-A/min-extent-distance-upperLeft.png)<!-- {_class="reveal stretch"} -->

---


![Screenshot_from_2018-08-04_15-25-55](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_15-25-55.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-04_15-26-30](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_15-26-30.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-04_17-10-24](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_17-10-24.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-04_17-48-26](img/sw-video-processing-segmentation/Screenshot_from_2018-08-04_17-48-26.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-06_04-07-50](img/sw-video-processing-segmentation/Screenshot_from_2018-08-06_04-07-50.png)<!-- {_class="reveal stretch"} -->

---

![Screenshot_from_2018-08-06_04-32-01](img/sw-video-processing-segmentation/Screenshot_from_2018-08-06_04-32-01.png)<!-- {_class="reveal stretch"} -->

---








![sw-video-processing-spatial-peak-activity-metric](img/sw-video-processing-spatial-peak-activity-metric.png)<!-- {_class="reveal stretch"} -->

---

![spatially-adaptive-vs-temporally-adaptive-filter-frame1208](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1208.png)<!-- {_class="reveal stretch"} -->

---

![spatially-adaptive-vs-temporally-adaptive-filter-frame1213](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1213.png)<!-- {_class="reveal stretch"} -->

---

![spatially-adaptive-vs-temporally-adaptive-filter-frame1218](img/sw-video-processing-spatially-vs-temporally-adaptive-filter/spatially-adaptive-vs-temporally-adaptive-filter-frame1218.png)<!-- {_class="reveal stretch"} -->

---

![sw-video-processing-spatially-vs-temporally-adaptive-filter](img/sw-video-processing-spatially-vs-temporally-adaptive-filter.png)<!-- {_class="reveal stretch"} -->

---

![Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION)](img/sw-video-statistics/Average_Pixel_Displacement_over_Time_(from_MOTION_CORRECTION).png)<!-- {_class="reveal stretch"} -->

---

![Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames)](img/sw-video-statistics/Cell_and_Vessel_(composite)_Label_Initialization_(first_8_frames).jpg)<!-- {_class="reveal stretch"} -->

---

![F_segmented_using_2-pUnstable](img/sw-video-statistics/F_segmented_using_2-pUnstable.jpg)<!-- {_class="reveal stretch"} -->

---

![Hybrid-Median-Filter_vs](img/sw-video-statistics/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1252AM.jpg)<!-- {_class="reveal stretch"} -->

---

![Hybrid-Median-Filter_vs](img/sw-video-statistics/Hybrid-Median-Filter_vs._MATLAB_Built-In_medfilt2_2015Aug12_1256AM.jpg)<!-- {_class="reveal stretch"} -->

---

![Motion-induced_BLURRING_of_ROI_with_max-min-mean](img/sw-video-statistics/Motion-induced_BLURRING_of_ROI_with_max-min-mean.png)<!-- {_class="reveal stretch"} -->

---

![differential_kurtosis1](img/sw-video-statistics/differential_kurtosis1.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_kurtosis2](img/sw-video-statistics/differential_kurtosis2.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_kurtosis3](img/sw-video-statistics/differential_kurtosis3.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_skewness](img/sw-video-statistics/differential_skewness.2jpg.jpg)<!-- {_class="reveal stretch"} -->

---

![differential_skewness](img/sw-video-statistics/differential_skewness.jpg)<!-- {_class="reveal stretch"} -->

---

![log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM](img/sw-video-statistics/log1p_of_stat-M2_after_2nd_Chunk_2015Aug12_139AM.jpg)<!-- {_class="reveal stretch"} -->

---

![pUnstable_(mean_gradients_of_fSplit)](img/sw-video-statistics/pUnstable_(mean_gradients_of_fSplit).jpg)<!-- {_class="reveal stretch"} -->

---

![stat-M3_after_2nd_Chunk_2015Aug12_140AM](img/sw-video-statistics/stat-M3_after_2nd_Chunk_2015Aug12_140AM.jpg)<!-- {_class="reveal stretch"} -->

---

![statistics_of_128_frames_contrast_enhanced](img/sw-video-statistics/statistics_of_128_frames_contrast_enhanced.jpg)<!-- {_class="reveal stretch"} -->

---


## Microscope Construction




---

### Standards




---

---

## Multispectral Imaging

---

### Filter Selection

![bd-spectra](img/spectra.png)<!-- {_class="reveal stretch"} -->

---

### Lenses

---

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

---

## Electronics

---

### Photosensors

---

## Cameras

This section details the evolution of cameras sensors and other sensors that provide bio-relevant data. Emphasis is on

---

### Scientific CMOS (sCMOS)

-   Correlated double sampling
-   HDR
-   On-sensor Fusion
-   Commercial availability

---

### Data-Transfer (Camera Interfaces)

-   USB
-   CameraLink
-   COaXPress
-   PCIe
    -   gen2, gen3
    -   x4, x8
    -   copper, fiber

---

## Image Acquisition

-   Libraries
-   Camera configuration
-   Windows vs. Linux
-   Setup and programming <!-- matrix vision has an amazing manual -->

---

## Image Data Management

Goal: maximize potential for *reuse*
1. by other scientists, or other healthcare providers
2. by **you** in the future

Critical considerations:
-   Storage format
-   Storage location
-   Maintaining record of provenance

...unfortunately no straightforward

---

- Varying performance requirements:
  - storage efficiency (size after compression)
  - storage efficiency (speed of compression) [^intentional resuse of the same descriptor`]

---

## Sensors

### Remarkably inexpensive

1. The **Intan** board
2. **StimDUINO**
3. etc.

### Widely Available

Development boards
- Arduino
- Launchpad (Texas Instruments)
- STM32
- Teensy (ARM Cortex M4)
<!-- todo:insert table and pictures -->


---

<!-- Wide-field epifluorescence imaging of a living brain has substantially
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
cortical neurons in awake mice. -->


## Fabricate an Optical Interface




### Cranial window system

Requirement for:

1.  Long-term maintenance of optical quality
1.  Easy and repeatable tissue accessibility

Goal:

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




---

## Methods and Approach

Image processing is performed offline using MATLAB software. The goal of this procedure is to reduce the raw image sequence to a collection of one-dimensional traces, where each trace indicates the fluorescence intensity of an individual neuron over time, and the collection approximates the distinct activity of each and every neuron in the microscope's field of view. We implement the process in 3 distinct stages as described below. The main novel contribution of this work is the efficient extension of segmented ROIs into the third dimension by clustering features of ROIs segmented separately in two dimensions. Online processing uses a similar approach, and the differences are explained in the next section.


---

### Image Pre-processing: Contrast Enhancement and Motion Correction

Alignment of each frame in the image sequence with all other frames is essential to the methods we use in subsequent steps for identifying and tracking cells over time. Thus, the goal of the first stage is to correct for any misalignment caused by movement of the brain relative to the microscope and camera.

Many algorithms for estimating and correcting image displacement exist and are well described in the medical imaging literature. We elected to use phase-correlation to estimate the induced motion in each frame, as we found this method to be highly stable, moderately accurate, and (most importantly) fast, especially when implemented in the frequency domain and using a decent graphics card.

Phase-correlation estimates the mean translational displacement between two frames, one being the template or "fixed" frame, and the other being the uncorrected or "moving" frame. In the spatial domain this is accomplished by computing the normalized cross-correlation, which implies a 2-dimensional convolution of large matrices. The equivalent operation in the frequency domain is a simple scalar dot-product of the discrete Fourier transforms of each image normalized by the square of the template, followed by the inverse Fourier transform. The intermediate result is the cross-correlation (or phase-correlation) matrix, which should have a peak in its center for correctly aligned images, or a peak near the center, the offset of which indicates the mean offset between the two images. This peak can be found with subpixel precision by interpolation to give a more accurate alignment, although at some moderate expense in computation time.

For the template image we used a moving average of previously aligned frames when processing frames sequentially, or alternatively a fixed mean of randomly sampled and sequentially aligned images from the entire set when processing files in parallel. The simplest way to perform this operation is to use the built-in MATLAB function normxcorr2, which makes optimization decisions based on image size and available hardware automatically. However, performance can be improved by tailoring the operation to your particular hardware and image size, i.e. using fft2 and ifft2 for large images and a good graphics card.

---

### Region of Interest (ROI) identification & segmentation

The ROI detection process used an adaptive threshold on the z-score of pixel intensity to reduce each frame to binary 1's and 0's (logical true or false). These binary frames were then processed using morphological operations to find and label connected components within each frame. For example, beginning with a z-score threshold of 1.5, all pixels that were more than 1.5 standard deviations above their mean were reduced to 1 (true), and all others reduced to 0 (false). Pixels reduced to 1 were often pixels overlying a cell that was significantly brighter during that frame due to activation of GCaMP. This initial threshold was adjusted up or down based on the number of non-zero pixels detected with each threshold. This was done to prevent spurious motion-induced shifts of the image frame from producing ROIs along high contrast borders. All morphological operations were performed using built-in MATLAB functions from the Image Processing Toolbox, which have fast parallel versions if the operation is run on a graphics card (e.g. imclose, imopen, etc.). Furthermore, the connected-component labeling and region formation operations were run using built-in MATLAB functions bwconncomp, and regionprops. Connected components were stored in a custom class and termed "single-frame ROIs," and these were then passed to the 3rd stage of processing, which merges them into a "multi-frame ROI" that represents the location and spatial distribution of each cell identified over the entire video.

---

### Region of Interest (ROI) merging

The standard structure of region properties output by the MATLAB function regionprops (Area, BoundingBox, Centroid, etc.) are mimicked in a custom class called RegionOfInterest, where each field of the structure becomes a property of the custom class. We add additional properties for storing state information and data associated with each ROI, along with a number of methods for comparing, merging, manipulating, and visualizing the single-frame and multi-frame ROIs. The single-frame to multi-frame ROI merging procedure is essentially a clustering process that merges single-frame ROIs together using such criteria as the proximity of their centroids, as well as proximity of their bounding-box (upper-left and lower-right corners). Performing this operation quickly was highly dependent on pre-grouping ROIs based on centroid location in overlapping blocks of the image frame, as well as grouping by size. This enabled the clustering to be performed in parallel (across CPU cores) followed by a second iteration of clustering to deal with redundancy in overlapping regions.

---

### Visualization

Once ROIs are established, all video data is reloaded and passed to a method in the _RegionOfInterest_ class that extracts the 1-dimensional trace for each ROI representing the fluorescence intensity in that region over time. The ROIs and their traces can then be interactively visualized using another method in the _RegionOfInterest_ class.

The _RegionOfInterest_ class defines methods for rapid spatial comparison operations which can typically be viewed as an adjacency matrix using built-in image viewing commands. Visualization of the segmented cell overlay and 1D traces can be manipulated by assigning colors, removing ROIs, hiding ROIs, and more.

---

### Predicting Activation State & Assessing Network Activity

The continuous signal intensity signals can be reduced to binary indicators of activity for each frame. This enables simplified and fast calculation of information theory measures, such as activation probability, joint and conditional probabilities, response entropy, mutual information, etc. The conversion from continuous to binary uses several abstractions of the signal applied to a Gaussian Mixture Model (GMM). The abstractions are calculated from the following:

1.  Linear least-squares fits to moving windows with variable size to find slope of the line surrounding each point.

2.  Skewness and Kurtosis of finite windows surrounding each data point.

3.  Temporal difference of fluorescence intensity.

The gaussian mixture model employs all measures to infer periods of reliable distinct activation of neurons.

---

### Parallel Processing

Many built-in MATLAB functions are implemented using efficient multi-threaded procedures, and these are used to the extent that they can be. However, for procedures that must operate on data in irregular formats (i.e. any format other than N-dimensional arrays of primitive data types), one also has the option of performing explicitly defined parallel operations by distributing data across multiple parallel processes, each with their own memory space. Below I give examples of how implementing in a multi-threaded fashion can substantially boost performance, and also an example of a situation where multi-threaded operations aren't possible without explicit calls for parallel distribution.

Standard elementwise operators like _plus_ (+) and _times_ (.\*), as well as comparison operators like _equals_ (==) and _less-than_ (&lt;) will be performed efficiently using as many processing cores as available when applied to large n-dimensional arrays of the same size. However, when operand sizes differ a simple call to the built-in operation will not work. For example, if we wish to subtract the average from each pixel over time from all frames in the series we can accomplish this with a call to MATLAB's _bsxfun_ function, which stands for Binary-Singleton-eXpansion-FUNction, as shown below:

```matlab

      Fmeansub = bsxfun( @minus, F, mean(F,3) );

```

This operation passes a function handle as the first argument (denoted by the '@' symbol) indicating the operation to perform. It then passes the entire \[IxJxK\] array of image data as the second argument, and it's temporal mean with size \[IxJx1\] is calculated once and passed as the third. The function efficiently expands the mean argument as needed for fast distribution across parallel threads.


---
