README.md




### pandoc-crossref subfigure groupwrapping
```markdown
<div id="fig:id-tag-for-figure">
![caption1.](location/name.png){#fig:label-for-subfigure1}
![caption2.](location/name.png){#fig:label-for-subfigure2}
</div>
 ```


### Science.md
```markdown
![caption](location/name.png){#fig:label}
 ```


### ScholDoc style figure reference
```markdown
#### Figure: text is ignored {#animal-tracking-bowl}
![raw](img/animal-tracking/01raw.jpg){#animal-tracking-bowl-raw}
![black-and-white](img/animal-tracking/02black-and-white.jpg){#animal-tracking-bowl-black-and-white}
![twoframes](img/animal-tracking/03twoframes.jpg){#animal-tracking-bowl-twoframes}
![tail_ID](img/animal-tracking/05tail_ID.jpg){#animal-tracking-bowl-tail_ID}
![mousedata1](img/animal-tracking/06mousedata1.jpg){#animal-tracking-bowl-mousedata1}
![mousedata1close](img/animal-tracking/07mousedata1close.jpg){#animal-tracking-bowl-mousedata1close}
![mousedata2](img/animal-tracking/08mousedata2.jpg){#animal-tracking-bowl-mousedata2}
![mousedata1fiberon1](img/animal-tracking/09mousedata1fiberon1.jpg){#animal-tracking-bowl-mousedata1fiberon1}
Caption: Processing steps for automated rotation counting procedure used in hemiparkinsonian mouse study
```


## Site generation

Using daux.io
```bash
docker run --rm -it -v "$PWD":/build daux/daux.io daux generate --source=body --destination=static
```
