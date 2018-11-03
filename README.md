The gtrlib.largetrees Package
=======================

Copyright (C) 2015-2018 Richard Grewe

Released under the [LaTeX Project Public License](http://www.latex-project.org/lppl/) version 1.2 or later

## Purpose

The main goal of the `gtrlib.largetrees` package is to offer
additional database fields and formats for the `genealogytree`
package, particularly for typesetting large trees.
This package is the side product of typesetting an actual genealogy tree
with almost 400 persons on 16 levels and on a DIN-A0 poster.

## Availability

The `gtrlib.largetrees` package is on [github](https://github.com/Ri-Ga/gtrlib.largetrees).

## Manual Installation

The `gtrlib.largetrees` package comes with (at least) the following files
* gtrlib.largetrees.ins
* gtrlib.largetrees.dtx
* README.md

and possibly also with
* Makefile
* gtrlib.largetrees.pdf (generated from gtrlib.largetrees.dtx)
* gtrlib.largetrees.sty (generated from gtrlib.largetrees.dtx)
* gtrlib.largetrees.code.tex (generated from gtrlib.largetrees.dtx)

To install the `gtrlib.largetrees` package, you additionally need
* docstrip.tex

To build the package (`gtrlib.largetrees.sty`) as well as the library
for the genealogytree package (`gtrlib.largetrees.code.tex`),
run one of the following
```
    latex gtrlib.largetrees.ins
    make package (needs Makefile)
```

Put the resulting `gtrlib.largetrees.sty` and `gtrlib.largetrees.code.tex`
somewhere where LaTeX can find it.
Read the documentation of your LaTeX system to find out where this
might be.

## Building Documentation

To build the documentation of the `gtrlib.largetrees` package, you
need the following dependencies of the package itself
* etoolbox
* genealogytree

and additionally need the following classes and packages:
* ltxdoc
* idxlayout
* enumitem
* biblatex
* filecontents
* showexpl
* pbox
* hypdoc
* cleveref

as well as the tools
* pdflatex
* biber
* makeindex

To build the documentation (`gtrlib.largetrees.pdf`), either run
```
    make docs
```
or the following sequence of commands
```
    pdflatex gtrlib.largetrees.dtx
    biber gtrlib.largetrees
    makeindex -s gind.ist -o gtrlib.largetrees.ind gtrlib.largetrees.idx
    makeindex -s gglo.ist -o gtrlib.largetrees.gls gtrlib.largetrees.glo
    pdflatex gtrlib.largetrees.dtx
    pdflatex gtrlib.largetrees.dtx
```


Happy TeX'ing
