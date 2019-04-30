# Mark Bucklin Dissertation

## Current Manuscripts and other Sources
The current text document (as a markdown file) is in the drafts directory at the root of [this repository](https://github.com/markbucklin/thesis/blob/master/draft/text.full.md). Content is also split into separate sections to facilitate sane assembly and reorganization.

- [Chapter 1: Introduction](https://github.com/markbucklin/thesis/tree/master/draft/chapters/ch1_introduction.md)
- [Chapter 2: Software](https://github.com/markbucklin/thesis/tree/master/draft/chapters/ch2_software.md)
- [Chapter 3: Hardware](https://github.com/markbucklin/thesis/tree/master/draft/chapters/ch3_hardware.md)
- [Chapter 4: Discussion](https://github.com/markbucklin/thesis/tree/master/draft/chapters/ch4_discussion.md)

PDF files are also in in this [drafts folder](https://github.com/markbucklin/thesis/blob/master/draft/chapters)

Figures are in [here](https://github.com/markbucklin/thesis/tree/master/draft/figures) in individual pdf form for the time being. Resizing and restructuring is accomplished with fluidity and grace at this juncture. Marginal effort to add, remove, rename or reorganize has been minimized, perhaps overly so.

## Building and Editing

See [setup and management notes](https://github.com/markbucklin/thesis/blob/draft/notes/setup-and-management.md).

### Generation of Figures (and subfigures)

The following commands can be run (i.e. using node) to trigger then conversion/generation, or one can use gulp; see instructions at the [mdinclude repository homepage](https://github.com/mastersign/mdinclude#simple-text-include)

```javascript
var mdinclude = require('mdinclude');
var result = mdinclude.readFileSync('main.md');
```
Using [script from](https://github.com/markbucklin/thesis/blob/draft/bin/imgdirs2md.sh) this repo and processing the [images repository](https://github.com/markbucklin/images) recursively to assign figure and subfigure titles and descriptions. This images repo is included as a submodule of this repo to facilitate independent/controlled updates for dependent projects.


```markdown
# Introduction and Background Chapter
<!-- #include "monkey-related.fig.md" -->
<!-- #include "neuromodulation-implant.fig.md" -->
<!-- #include "neuromodulation-pcb.fig.md" -->

# Hardware Chapter
<!-- #include "animal-tracking.fig.md" -->
<!-- #include "behavior-box.fig.md" -->
<!-- #include "beveled-fiber-bundle.fig.md" -->
<!-- #include "headplate-holder.fig.md" -->
<!-- #include "microscope.fig.md" -->
<!-- #include "spherical-treadmill-extended.fig.md" -->
<!-- #include "spherical-treadmill-motion-sensors.fig.md" -->
<!-- #include "spherical-treadmill-VR.fig.md" -->
<!-- #include "spherical-treadmill-water-delivery.fig.md" -->
<!-- #include "cranial-window.fig.md" -->

# Software Chapter
<!-- #include "FluoPro.fig.md" -->
<!-- #include "Pipeline.fig.md" -->
<!-- #include "Scicadelic.fig.md" -->
<!-- #include "sfn-poster.fig.md" -->
<!-- #include "SW-2015-09-image-processing-refinement.fig.md" -->
<!-- #include "SW-2015-11-batch05-image-processing.fig.md" -->
<!-- #include "SW-2016-01-batch12-image-processing.fig.md" -->
<!-- #include "SW-2017-08-roi05.fig.md" -->
<!-- #include "SW-2018-08-batch02-image-processing.fig.md" -->

# Discussion
<!-- #include "SW-sequence-2015-07-seq02.fig.md" -->
<!-- #include "SW-sequence-2015-12-seq23.fig.md" -->
<!-- #include "SW-sequence-2016-01-seq25.fig.md" -->
<!-- #include "SW-sequence-vlcsnap.fig.md" -->
```

## Tasks
- [x] start todo list
- [ ] finish todo list
- [ ] build figures
- [ ] templates
- [ ] fix build procedure
- [ ] fix content
    - [ ] assign proper section levels
    - [ ] indicate/ensure all non-body section headers get {.unnumbered} tag
	- [ ] move incomplete sections out
	- [ ] indicate sections needing more work
	- [ ] add figure titles/descriptions
	- [x] add image width for multi-image figures
	- [x] cascade chapter/section/paragraph splitting
	- [ ] topic tags
