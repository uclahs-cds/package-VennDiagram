# VennDiagram

1. [Description](#description)
2. [Installation](#installation)
3. [Example plots](#example-plots)
4. [Resources](#resources)
5. [Getting help](#getting-help)
6. [Contributors](#contributors)
7. [Citation information](#citation-information)
8. [License](#license)

## Description

VennDiagram is a R package for generating high-resolution, customizable Venn diagrams with up to four sets and Euler diagrams with up to three sets. Includes handling for several special cases including two-case scaling, and extensive customization of plot shape and structure.

## Installation

To install the latest public release of VennDiagram from CRAN:

```R
install.packages('VennDiagram');
```

Or to install the latest development version from Github:

```R
# If `devtools` is not already installed, run:
# install.packages("devtools");

devtools::install_github('uclahs-cds/public-R-VennDiagram');
```

## Example plots

How to make a simple Venn diagram:

```R
library(VennDiagram);
vd <- VennDiagram::venn.diagram(list(A = 1:150, B = 121:170), filename = NULL);
grid::grid.draw(vd);
```

![](https://camo.githubusercontent.com/f4c17c926a5be6bfb3aeb42b19d29ef9d6f5440654dd4f078e1c8a113d08907e/68747470733a2f2f692e696d6775722e636f6d2f4d47376f4b41712e706e67)

The four types of Venn diagrams drawn by the VennDiagram package:

<ol type="a">
    <li>A one-set Venn diagram showing rudimentary customizable features such as label font size, label font face, and shape-fill.</li>
    <li>A two-set Venn diagram showing more advanced features such as scaling, individual shape-fill specifications, and individual caption label placement.</li>
    <li>A three-set Venn diagram showing a different shape-line type ("transparent") and the "text" option of caption label placement where the caption labels are attached to area labels.</li>
    <li>A four-set Venn diagram showing a combination of all previous features plus the ability to customize titles.</li>
</ol>

![](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F1471-2105-12-35/MediaObjects/12859_2010_Article_5075_Fig1_HTML.jpg?as=webp)

Selected Venn diagram special cases and Euler diagrams drawn by the VennDiagram package.

- **Row 1, column 1**: automatically drawn, customizable lines that optimize display of partial areas when individual partial areas become too small in two-set Venn diagrams.
- **Row 1, column 2**: a two-set Euler diagram showing total inclusion of one of the sets.
- **Row 1, column 3**: a two-set Euler diagram showing two distinct sets.
- **Row 2, column 1**: a three-set Euler diagram where one set has no discrete elements.
- **Row 2, column 2**: a three-set Euler diagram where one set has no discrete elements is totally included in one of the other two sets.
- **Row 2, column 3**: a three-set Euler diagram where two sets have no discrete elements and are included in a larger third set.
- **Row 3, column 1**: a three-set Euler diagram showing total inclusion of two sets that are distinct from the third set.
- **Row 3, column 2**: a three-set Euler diagram where one set is totally included in another set, which is itself totally included in the third set.
- **Row 3, column 2**: a three-set Euler diagram showing three distinct sets.

![](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F1471-2105-12-35/MediaObjects/12859_2010_Article_5075_Fig2_HTML.jpg?as=webp)

A side-by-side comparison of an Euler diagram and a Venn diagram for the same hypothetical sets.

<!-- to get A, B -->
<ol type="a">
    <li>The Euler diagram shows only non-zero areas and can therefore be more graphically accurate.</li>
    <li>The Venn diagram shows the non-existent area as an area with zero content. Though this is not graphically accurate, it preserves the recognisability of a Venn diagram.</li>
</ol>

![](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F1471-2105-12-35/MediaObjects/12859_2010_Article_5075_Fig3_HTML.jpg?as=webp)

## Resources

Available resources for VennDiagram include the package [CRAN page](https://cran.r-project.org/web/packages/VennDiagram/index.html) and [reference manual](https://cran.r-project.org/web/packages/VennDiagram/VennDiagram.pdf).

## Getting help

For guidance or support with VennDiagram check out [Discussions](https://github.com/uclahs-cds/public-R-VennDiagram/discussions)

See [Issues](https://github.com/uclahs-cds/public-R-VennDiagram/issues) to submit bugs, suggest new features or view current works

[Pull requests](https://github.com/uclahs-cds/public-R-VennDiagram/pulls) are also open for discussion.

## Contributors

Contributors to this package can be viewed [here](https://github.com/uclahs-cds/public-R-VennDiagram/graphs/contributors) on GitHub.

## Citation information

To cite package `VennDiagram` in publications, use:

Chen, H., Boutros, P.C. _VennDiagram: a package for the generation of highly-customizable Venn and Euler diagrams in R_. BMC Bioinformatics 12, 35 (2011). https://doi.org/10.1186/1471-2105-12-35

A BibTeX entry for LaTeX users is:

```BibTeX
@Article{,
    title = {VennDiagram: a package for the generation of highly-customizable Venn and Euler diagrams in R},
    journal = {BMC Bioinformatics},
    doi = {10.1186/1471-2105-12-35},
    url = {https://doi.org/10.1186/1471-2105-12-35},
    volume = {12},
    number = {35},
    year = {2011},
    month = {January},
    day = {26},
    issn = {1471-2105},
    author = {Hanbo Chen and Paul C Boutros}
  }
```

This information is available via `citation('VennDiagram')`

## License

Authors: Hanbo Chen, Dan Knight, Stefan Eng & Paul C. Boutros (PBoutros@mednet.ucla.edu)

VennDiagram is licensed under the GNU General Public License version 2. See the file LICENSE.md for the terms of the GNU GPL license.

VennDiagram is a R package enabling generation and customization of quality Venn diagrams and Euler diagrams.

Copyright (C) 2015-2018 Ontario Institute for Cancer Research and 2018-2023 University of California Los Angeles ("Boutros Lab") All rights reserved.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
