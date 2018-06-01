# Toolbox Utils

Should I include these?... will have to think about it 
## Chainable interface


## Resource survey, packaging, inspection
* Cross-toolpkglibbox identification of similar functionality
    * benchmarking comparison
    * cost analysis
    * abstracted package procurement

## function call syntax inspection
* cache function calls and execution profile
    * input/output sizes, types
    * input/output variable names
    * input/output parameter values
    * performance-profile
    * device and environment props
* 'mocking' to determine usage
    * 

## Builtin/undoc exposure
* for use with System objects
    * matlab.system.SystemProp.___
        * set/getParentGraph
        * setInstanceName
        * getInputNames
        * getSystemObjectDescriptionFromH1Line
        * sysObjNodeCloneHelper
        * [majorV, minorV] = getVersionNumber
        * getVersionString
        * showSimulateUsing
        * getPropertyGroups
    * matlab.system.SystemImpl.___
        * getExecutionSematicsImpl
        * [flag, sysmex] = isAccelerated(obj)
        * profileInfo = getProfileData()
        * getCachedInputSize
        * getAlternateBlock
* mshow
    * lists packages and package contents



## Logging
Suggested format compatible with log4j ([openeyes](https://github.com/openeyes/architecture/wiki/Application-architecture))

* source -- the source of the audit log entry, this must be the fully qualified class name and method name in the format 
    * CLASS_NAME.METHOD_NAME for example, uk.org.openeyes.services.PatientService.addPatient
* logLevel -- the severity of the log entry from the following conventions\footnote{These follow log4j conventions and are * common to many logging systems}:
    * INFO - informational only, no action should be taken
    * WARN -- warning, action is required but not immediately
    * ERROR -- an error has occurred requiring action
    * FATAL -- a very error has occurred and requires immediate action
    * DEBUG -- fine-grained information used only for debugging and troubleshooting
    * TRACE -- a lower-level than debug for intense troubleshooting
* message -- a string message that is written directly to a log
* format -- a format string which will format an indefinite number of parameters into a string message to log

### Common Element component interface model
(also from OpenEyes)
```cpp
List<Element> getAll(Paging paging, boolean includeDeleted = false)
List<Element> get(ElementQuery query, Paging paging, boolean includeDeleted = false)

Element get(UUID elementId)
Element get(UUID elementId, Version version)

void create(Element element)
void update(Element element)
void update(Element element, Version version)
void delete(Element element)
void destroy(Element element)    

}

// The base class for all elements
abstract class Element {

    UUID id
    String name
    String description
    Version version

}    

// An element composed of other elements
abstract class CompositeElement extends Element {

    OrderedTree<Element> items

}
```

## Compatibility/Extensibility
The goal is to maximize opportunities to utilize preexisting tools borrowed from sectors with similar performance and capability requirements. Often these are well developed, highly optimized, and sufficiently stable. 

Examples:
* Video Game design
* Broadcast video and television (e.g. live sports)
* Machine vision
    * Industrial control and automation
    * Automotive
    * Surveillance/Security-monitoring
    * Remote sensing

### File formats for Compatibility

from Banshee3d game engine and editor ([Banshee 3D](https://www.banshee3d.com/))

| Resource       | File Extension                            |
| -------------- | ----------------------------------------- |
| Mesh/animation | .FBX, .OBJ, .DAE                          |
| Texture        | .PNG, .PSD, .BMP, .JPG, .GIF, .TIFF, .DDS |
| Audio          | .OGG, .WAV, .FLAC, .MP3                   |
| Fonts          | .OTF, .TTF                                |
| Shaders        | HLSL, GLSL                                |

Shader Intermediary: SPIR-V (transpiles between HLSL, GLSL, Vulkan, OpenVX?)