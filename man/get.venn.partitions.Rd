\name{get.venn.partitions}
\alias{get.venn.partitions}
\title{Get the size of individual partitions in a Venn diagram}
\usage{
get.venn.partitions(x, force.unique = TRUE, keep.elements = TRUE,
  hierarchical = FALSE)
}
\arguments{
\item{x}{A list of vectors.}

\item{force.unique}{A logical value.  Should only unique values be
considered?}

\item{keep.elements}{A logical value. Should the elements in each region be returned?}

\item{hierarchical}{A logical value. Changed the way overlapping elements are treated if force.unique is TRUE.}
}
\value{
A data frame with \code{length(x)} columns and
\code{2 ^ length(x)} rows.  The first \code{length(x)} columns are all
logical; see \code{\link{make.truth.table}} for more details.  There are three
additional columns:
\describe{
\item{..set..}{A set theoretical desription of the Venn region.  (Note that
in some locales under Windows, the data.frame print method fails to correctly
display the Unicode symbols for set union and set intersection.  This is a
bug in R, not this function.)}
\item{..values..}{A vector of values contained in the Venn region. Not returned if keep.elements is FALSE.}
\item{..count..}{An integer of the number of values in the Venn region.}
}
}
\description{
Partitions a list into Venn regions.
}
\section{Details}{

If force.unique is FALSE, then there are two supported methods of grouping categories with duplicated elements in common.
If hierarchical is FALSE, then any common elements are gathered into a pool. So if
\code{x <- list(a = c(1,1,2,2,3,3), b=c(1,2,3,4,4,5), c=c(1,4))} then \code{(b intersect c)/(a)} would contain
three 4's. Since the 4's are pooled, \code{(b)/(a union c)} contains no 4's.
If hierachical is TRUE, then \code{(b intersect c)/(a)} would contain one 4.Then \code{(b)/(a union c)} cotains one 4.
}
\examples{
# Compare force.unique options
x <- list(a = c(1, 1, 1, 2, 2, 3), b = c(2, 2, 2, 3, 4, 4))
get.venn.partitions(x)
get.venn.partitions(x, force.unique = FALSE)

# Figure 1D from ?venn.diagram
xFig1d = list(
  I = c(1:60, 61:105, 106:140, 141:160, 166:175, 176:180, 181:205,
       206:220),
  IV = c(531:605, 476:530, 336:375, 376:405, 181:205, 206:220, 166:175,
        176:180),
  II = c(61:105, 106:140, 181:205, 206:220, 221:285, 286:335, 336:375,
          376:405),
  III = c(406:475, 286:335, 106:140, 141:160, 166:175, 181:205, 336:375,
           476:530)
 )
get.venn.partitions(xFig1d)
grid.draw(VennDiagram::venn.diagram(x, NULL, disable.logging = TRUE))
}
\author{
Richard Cotton.
}
\seealso{
\code{\link[VennDiagram]{venn.diagram}}, \code{\link{make.truth.table}}
}

