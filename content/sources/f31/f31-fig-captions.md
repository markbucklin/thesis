Figure 1 – This diagram shows the process outlined in AIM 3 used to
select a set of input/output targets defining each mouse. The variables
assigned at each stage will be used by the *stimulation-control* and
*machine-learning* algorithms described in AIM 2. *BLUE*: Cre-LoxP mouse
*strain* (cre) and *genotype* (0,-,+) from inbred and WT-crossed
Cre-LoxP Transgenics. G~0~ = wild-type;, G~-~(cre) = heterzygous
expression of cre; G~+~(cre) = homozygous expression of Cre (e.g.
G~+~(Emx), G~+~(D1), etc.). *BLACK*: Stimulation targets defined by
viral gene delivery using adeno-associated virus (AAV) vector. Each
target is defined by the *opsin/promoter-pair* of the gene delivered and
the *stereotaxic-coordinates*, or equivalently the *brain region
reference atlas acronym*, defined using the ALLEN Mouse Brain Atlas.
ap,ml,dv = anteroposterior, mediolateral, & dorsoventral coordinates
respectively. e.g. ops∈{‘chr2’,’arch’,’arch’,…etc.}. pro∈{
‘cag’,’caglox’}. k = 1,2,…,Q. where Q≤8 is the total number of
unilateral brain regions targeted for injection. d,s = *dexter,
sinister*, used to represent whether bilaterally symmetric target region
is on right or left side of the brain respectively. For Example, S~3~^d^
refers to the 3^rd^ stimulation site in the right hemisphere for an
individual mouse and would initially be defined programmatically with
property:value pairs (MATLAB handle notation), e.g. &gt;&gt;
mouse(36).S~3~^d^ = S(‘chr2’,’caglox’,reg(-1.34,1.75,4.5)). *RED*:
Recording target *region* defined by target tip placement of
carbon-fiber or tungsten microwire recording electrodes (driven and
fixed during initial surgery), similar to S~k~ except also including a
parameter, p, referring to the *pad* on the the circuit board to which
the electrode attaches. Each R~k~ can also be assigned *filter
parameters* where ‘filt’ can be one of {filt\_lp, filt\_hp, filt\_bp}
for low-pass, high-pass, and band-pass respectively, with appropriate
cuttoff parameter, fs. *GREEN*: represents a fully defined mouse.

\# 35 11 Sept 13 : 27

\# 42 11 Sept 13 : 126

\# 46 11 Sept 13 : 53

\# 33 11 Sept 13 : 50

\# 31 11 Sept 13 : 142

Figure – BLUE: Selection of Cre-LoxP mouse strain (cre) and genotype
from inbred and WT-crossed Cre-LoxP Transgenics. G~0~ = wild-type;,
G~-~(cre) = heterzygous expression of cre; G~+~(cre) = homozygous
expression of cree (e.g. G~+~(Emx), G~+~(D1), etc.). RED: Selection of
stimulation target by . Each target is defined by the opsin/promotor
pair delivered
