### Figures from all sections

This uses "Mdinclude" to facilitate rapid placement and restructuring of figures within a larger document.


The following commands can be run (i.e. using node) to trigger then conversion/generation, or one can use gulp; see instructions at the [mdinclude repository homepage](https://github.com/mastersign/mdinclude#simple-text-include)

```javascript
var mdinclude = require('mdinclude');
var result = mdinclude.readFileSync('main.md');
```
#### Generated section

Using [script from](https://github.com/markbucklin/thesis/blob/draft/bin/imgdirs2md.sh) this repo and processing the [images repository](https://github.com/markbucklin/images) recursively to assign figure and subfigure titles and descriptions. This images repo is included as a submodule of this repo to facilitate independent/controlled updates for dependent projects.



##### Introduction and Background Chapter
<!-- #include monkey-related.fig.md -->
<!-- #include neuromodulation-implant.fig.md -->
<!-- #include neuromodulation-pcb.fig.md -->

##### Hardware Chapter
<!-- #include animal-tracking.fig.md -->
<!-- #include behavior-box.fig.md -->
<!-- #include beveled-fiber-bundle.fig.md -->
<!-- #include headplate-holder.fig.md -->
<!-- #include microscope.fig.md -->
<!-- #include spherical-treadmill-extended.fig.md -->
<!-- #include spherical-treadmill-motion-sensors.fig.md -->
<!-- #include spherical-treadmill-VR.fig.md -->
<!-- #include spherical-treadmill-water-delivery.fig.md -->
<!-- #include cranial-window.fig.md -->

##### Software Chapter
<!-- #include FluoPro.fig.md -->
<!-- #include Pipeline.fig.md -->
<!-- #include Scicadelic.fig.md -->
<!-- #include sfn-poster.fig.md -->
<!-- #include SW-2015-09-image-processing-refinement.fig.md -->
<!-- #include SW-2015-11-batch05-image-processing.fig.md -->
<!-- #include SW-2016-01-batch12-image-processing.fig.md -->
<!-- #include SW-2017-08-roi05.fig.md -->
<!-- #include SW-2018-08-batch02-image-processing.fig.md -->

##### Discussion
<!-- #include SW-sequence-2015-07-seq02.fig.md -->
<!-- #include SW-sequence-2015-12-seq23.fig.md -->
<!-- #include SW-sequence-2016-01-seq25.fig.md -->
<!-- #include SW-sequence-vlcsnap.fig.md -->
