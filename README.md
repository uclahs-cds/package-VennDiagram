# VennDiagram

1. [Description](#description)
2. [Installation](#installation)
3. [Example plots](#example-plots)
4. [Resources](#resources)
5. [Getting help](#getting-help)
6. [Citation information](#citation-information)
7. [License](#license)

## Description

VennDiagram is a R package for generating high-resolution, customizable Venn diagrams with up to four sets and Euler diagrams with up to three sets. Includes handling for several special cases including two-case scaling, and extensive customization of plot shape and structure.

## Example plots

![](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F1471-2105-12-35/MediaObjects/12859_2010_Article_5075_Fig1_HTML.jpg?as=webp)

**The four types of Venn diagrams drawn by the VennDiagram package.** **A)** A one-set Venn diagram showing rudimentary customizable features such as label font size, label font face, and shape-fill. **B)** A two-set Venn diagram showing more advanced features such as scaling, individual shape-fill specifications, and individual caption label placement. **C)** A three-set Venn diagram showing a different shape-line type ("transparent") and the "text" option of caption label placement where the caption labels are attached to area labels. **D)** A four-set Venn diagram showing a combination of all previous features plus the ability to customize titles.

![](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F1471-2105-12-35/MediaObjects/12859_2010_Article_5075_Fig2_HTML.jpg?as=webp)

**Selected Venn diagram special cases and Euler diagrams drawn by the VennDiagram package.** Row 1, column 1: automatically drawn, customizable lines that optimize display of partial areas when individual partial areas become too small in two-set Venn diagrams. Row 1, column 2: a two-set Euler diagram showing total inclusion of one of the sets. Row 1, column 3: a two-set Euler diagram showing two distinct sets. Row 2, column 1: a three-set Euler diagram where one set has no discrete elements. Row 2, column 2: a three-set Euler diagram where one set has no discrete elements is totally included in one of the other two sets. Row 2, column 3: a three-set Euler diagram where two sets have no discrete elements and are included in a larger third set. Row 3, column 1: a three-set Euler diagram showing total inclusion of two sets that are distinct from the third set. Row 3, column 2: a three-set Euler diagram where one set is totally included in another set, which is itself totally included in the third set. Row 3, column 2: a three-set Euler diagram showing three distinct sets.

![](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F1471-2105-12-35/MediaObjects/12859_2010_Article_5075_Fig3_HTML.jpg?as=webp)

**A side-by-side comparison of an Euler diagram and a Venn diagram for the same hypothetical sets.** A) The Euler diagram shows only non-zero areas and can therefore be more graphically accurate. B) The Venn diagram shows the non-existent area as an area with zero content. Though this is not graphically accurate, it preserves the recognisability of a Venn diagram.

## Installation

To install the latest public release of VennDiagram from CRAN:
```
install.packages("VennDiagram")
```
Or to install the latest development version from Github:
```
# install.packages("devtools")

devtools::install_github("uclahs-cds/public-R-VennDiagram")
```

## Resources

Available resources for VennDiagram include the package [CRAN page](https://cran.r-project.org/web/packages/VennDiagram/index.html) and [reference manual](https://cran.r-project.org/web/packages/VennDiagram/VennDiagram.pdf).

## Getting help

For guidance or support with VennDiagram check out [Discussions](https://github.com/uclahs-cds/public-R-VennDiagram/discussions)

See [Issues](https://github.com/uclahs-cds/public-R-VennDiagram/issues) to submit bugs, suggest new features or view current works

[Pull requests](https://github.com/uclahs-cds/public-R-VennDiagram/pulls) are also open for discussion.

## Citation information

Chen, H., Boutros, P.C. VennDiagram: a package for the generation of highly-customizable Venn and Euler diagrams in R. BMC Bioinformatics 12, 35 (2011). https://doi.org/10.1186/1471-2105-12-35

## License

Authors: Hanbo Chen, Paul C. Boutros (PBoutros@mednet.ucla.edu)

VennDiagram is licensed under the GNU General Public License version 2. See the file LICENSE.md for the terms of the GNU GPL license.

VennDiagram is a R package enabling generation and customization of quality Venn diagrams and Euler diagrams.

Copyright (C) 2015-2018 Ontario Institute for Cancer Research and 2018-2023 University of California Los Angeles ("Boutros Lab") All rights reserved.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
