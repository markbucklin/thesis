#!/bin/bash
file="./body/chapter1-project-prologue/contents.list"
while IFS= read -r line
do
        # display $line or do somthing with $line
	cat "$line" >> ./release/chapter1.md
done <"$file"


./body/chapter1-project-prologue/intro.md
./body/chapter1-project-prologue/animal-tracking.md
./body/chapter1-project-prologue/behavior-box.md
./body/chapter1-project-prologue/closed-loop-diffuse-optogenetic-neuromodulation.md
./body/chapter1-project-prologue/cnc-fabrication.md
./body/chapter1-project-prologue/photo-absorption-modeling.md
./body/chapter1-project-prologue/spherical-treadmill.md
./body/chapter2-widefield-fluorescence-microscopy/computer-workstation-build-and-configuration.md
./body/chapter2-widefield-fluorescence-microscopy/headplate-and-holder.md
./body/chapter2-widefield-fluorescence-microscopy/microscopy-1.md
./body/chapter2-widefield-fluorescence-microscopy/optical-window.md
./body/chapter3-image-processing-pipeline/image-processing.md
./body/chapter4-online-stream-processing/video-processing.md
./body/chapter5-developing-for-tomorrow/cameras.md
./body/chapter5-developing-for-tomorrow/compression.md
./body/chapter5-developing-for-tomorrow/data-scaling.md
./body/chapter5-developing-for-tomorrow/distributed-dataflow-and-streaming.md
./body/chapter5-developing-for-tomorrow/information-and-informativity.md
./body/chapter5-developing-for-tomorrow/microscopy-2.md
./body/chapter5-developing-for-tomorrow/sensors.md
./body/chapter5-developing-for-tomorrow/siliskull.md
