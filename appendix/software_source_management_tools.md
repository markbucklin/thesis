# Software Manifest & Management Tools
## Sources
* Version-Control
    * Github
    * Bitbucket
    * Gitlab
    * Sourceforge
    * 
    * [Comparison on Wikipedia](https://en.wikipedia.org/wiki/Comparison_of_source_code_hosting_facilities)
* Code Repositories
    * Matlab File Exchange
    * stack overflow
    * ~~(Google Code)[code.google.com]~~
* Package Management & Binary Distribution Sites
    * Bintools/JFrog
    * Conan.io
    * NPM
    * Nuget
    * VCPkg
    * Chocolatey (win)
    * Apt/yum (linux)
    * Pacman (msys/mingw)
    * Pact (babun/cygwin)
    * scoop
    * NPackd
    * Pypi
* Research Entity Web Sites
    * From Laboratory Manifest
        * Janelia
        * INRIA
        * Schartz Center for Computational Neuroscience (SCCN)
            * (SCCN Homepage)[https://sccn.ucsd.edu/wiki/SCCN_Software]
            * (SCCN Github)[https://github.com/sccn]
            * EEGLAB, BCILAB,Lab-Streaming-Layer
        * Cohen Lab
            * LeverJS
    * NIH
    * NASA
* Binary Utilities
    * gtools
    * exetools
    * nirsoft
    * sysinternals
    * unxutils
    * x64tools
    * BU EngIT (butools)
* OSS Foundations
    * Apache
* Citations in Literature
    * from Biblio-Manifest
* SCC or Grid Utilities

## Local Filesystem

### Shared-Library Interrogation
* DLL utilities
    * dllexp
    * dllusage
* JAR Search
    * find all jars on system in drive "Z:\"
    * >dir z:\  /S /b | findstr /E /C:".jar" >> Z:\files\alljars_zdrive.txt

### MATLAB Installation Directory
* filetypes
    * .m
    * .p (may not be useful as contents are intended to be obscured)
    * .h, .hpp (c/cpp headers)
    * .c, .cpp (c/cpp sources)
    * .lib (shared library exported functions)
    * .def (exported function definition)
    * .dll, .exe, .mexw64, .mexw32, .mex__, .sh, .bat
    * .config?, .ini?
    * .xml & .xsd 
        * function signatures
        * function registry
            * e.g. dataflow.xml, dataread.xml, datetime.xml, duration.xml
            * visiongpu.xml
            * visionscopes.xml
    * .m3iconfig
    * .html 
        * help content
        * toc
        * package/toolbox contents
        * examples/demos, 
        * other
        * functionlist.html
    * .map (?)
        * helptargets.map
    * .json 
        * examples.json
    * .js 
        * docscripts.js
    * .slx (simulink)
    * .txt
        * **synonyms.txt**
    * .properties
    * .svg, .png, .gif, .jpg
    * .csv
        * linkscores.csv
    * 
    * .class in .jar (java archive) files
* Release Notes
* metaprogramming tools: *meta.___* classes
    * .class -> metaclass(obj), or ?obj, or meta.class.fromName
    * .package -> meta.package.getAllPackages, meta.package.fromName
    * .method
    * .property
    * .event
    * .DynamicProperty
    * .EnumeratedValue
    * .MetaData
    * .ArrayDimension
    * .FixedDimension
    * .UnrestrictedDimension
    * .Validation
* recursive tree traversal using *mshow()*
* farg, fdep
* exploreJavaSources
* objection introspection
    * methods, properties, events
    * fieldnames(struct(obj))
    * superclasses
    * methodsview
* function runtime introspection
    * nargin nargout
    * dbstack
    * inputnames, outputnames
    * [I,J,V] = inmem -all
* package codetools
    * deprpt
    * helpfunc
    * getFileNameAsHyperlink
    * contentsrpt
    * internal.matlab.reports.___
        * matlabFiles
        * parseDependencyInfo
* package internal.matlab.reports
* standard path survey exploration
    * what pathname
    * which -all keyword
    * lookfor
    * locate?
* Deep/Undocumented Survey
    * Packages -> metapackage
    * M-files
    * findMFileFoldersInTree
* File-Exchange API?
* matlab.internal.language.registry
    

### Automated Syntax Assistance
* (general)
    * getmcode
    * helpfunc
    * contentsrpt
    * internal.matlab.reports
    * getmcode
* Operation dependencies
    * * functions()
    * getcallinfo
    * getundoc()
    * farg, fdep
    * deprpt
    * parseDependencyInfo
* Argument Numbers, Acess constraints, defaults
    * in, out, inout, static/persistent, global
    * nargin, nargout during dbstep-tracing or nargin(@fcn)
* Argument Names & (function call *signature*)
    * getString(message('MATLAB:fcnname:fcnsub'))
    * com.mathworks.matlab.api.explorer
    * com.mathworks.jmi.MLFileUtils
    * codetools.___ package
    * * getArgumentInfo()
    * getdescription()
    * FunctionInfo()
    * System objects
        * getInputNames(), getOutputNames()
        * getPublicProperties
        * getSourceDataTypeInfo
        * in idpack.___ package: pvget(z,'InputName');
    * getFunctionSignature()
    * processArgs?
    * matlab.mixin.CustomDisplay\getDetailedHeader
* Size, Type, and other props (i.e. constrain limit [0,1])
        

## Manifest File Format
### JSON: Array of json objects for each resource

```json
{
  "name": "vscode-docs",
  "version": "0.10.3",
  "author": {
    "name": "Microsoft Corporation"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/Microsoft/vscode-docs.git"
  },
  "devDependencies": {
    "gulp": "^3.9.1",
    "shelljs": "^0.7.8"
  }
}
```
### Pacman (Msys) format
```yaml
Name            : texinfo
Version         : 6.3-1
Description     : Utilities to work with and produce manuals, ASCII text, and on-line documentation from a single source file
Architecture    : x86_64
URL             : https://www.gnu.org/software/texinfo/
Licenses        : GPL3
Groups          : base-devel
Provides        : None
Depends On      : info  perl  sh
Optional Deps   : None
Required By     : None
Optional For    : None
Conflicts With  : None
Replaces        : None
Installed Size  : 7.63 MiB
Packager        : Alexey Pavlov <alexpux@gmail.com>
Build Date      : Tue, Feb 21, 2017 1:44:05 AM
Install Date    : Wed, Oct 11, 2017 4:21:20 AM
Install Reason  : Explicitly installed
Install Script  : Yes
Validated By    : Signature
```
### OpenEyes format

```c++
class Plugin
{
    UUID id                     // unique identifier

    String namespace            // plugin namespace e.g. "uk.org.openeyes"
    String pluginId             // computable plugin name e.g. "strabismus"
    String fullyQualifiedName() { return namespace + "." + pluginId }

    LocalizedValue name         // name
    LocalizedValue description  // description
    PluginAuthor author         // who created this plugin
    Version version             // version

    Manifest getManifest()      // returns the manifest of the JAR file
    String getManifestAttribute(String attributeName)

    String categoryPath         // category e.g. "clinical.ophthalmology.strabismus"
    List<String> tags           // English tags for the plugin
}
```
### Location in Java source packages which are packaged into JAR files
    src/main/resources/META-INF/MANIFEST.MF


## Interesting MATLAB usage
```matlab
[attrNames, methodsData] = methodsview('com.mathworks.product.util.ProductIdentifier', 'libfunctionsview')
[attrNames, methodsData] = methodsview('com.mathworks.product.util.ProductIdentifier', 'noUI')
usbman = internal.deviceplugindetection.Manager.getInstance();
getPCIInfo(slrt, 'installed');
chan = asyncio.Channel;
stin = asyncio.InputStream;
stout = asyncio.OutputStream;
unlicfcn = matlab.internal.language.registry.findUnlicensedFunctions;
help matlab.internal.language.structuredeval
lhi = helpUtils.createMatlabLink('hi');
titledcmd = helpUtils.createMatlabCommandWithTitle('disp(''CommandTitle'')');
help helpUtils.makeDualCommand
port = connector.securePort;
wserv = connector.internal.webserver
webeng = connector.internal.engine
webconf = connector.internal.buildStartupConfig('www.bu.edu')
ulfcnreg = com.mathworks.mlwidgets.help.functionregistry.UnlicensedFunctionRegistry('_gpu_getMetadata');
ulfc = ulfcnreg.getClass;
sfcn = get(ulfc);



getProdList = @() com.mathworks.install.InstalledProductFactory.getInstalledProducts(matlabroot);
getProdArray = @() toArray(getProdList());
prod = getProdArray();
prodinfo = arrayfun(@get, prod);

getProdInfo = @(name) com.mathworks.product.util.ProductIdentifier.get(name)
```

### Java Archive (JAR) Manifest
from [openeyes wiki](https://github.com/openeyes/architecture/wiki/Application-architecture)
```java
public static String getManifestAttribute(String attributeName) {
    Enumeration resEnum;
    try {
        resEnum = Thread.currentThread().getContextClassLoader().getResources(JarFile.MANIFEST_NAME);
        while (resEnum.hasMoreElements()) {
            try {
                URL url = (URL)resEnum.nextElement();
                InputStream is = url.openStream();
                if (is != null) {
                    Manifest manifest = new Manifest(is);
                    Attributes mainAttribs = manifest.getMainAttributes();
                    return mainAttribs.getValue(attributeName);
                }
            }
            catch (Exception e) {
                // Silently ignore wrong manifests on classpath?
            }
        }
    } catch (IOException e1) {
        // Silently ignore wrong manifests on classpath?
    }
    return null; 
}
```