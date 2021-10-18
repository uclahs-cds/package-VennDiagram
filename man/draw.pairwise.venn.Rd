\name{draw.pairwise.venn}
\alias{draw.pairwise.venn}
\title{Draw a Venn Diagram with Two Sets}
\description{Creates a Venn diagram with two sets.  Creates Euler diagrams when the dataset meets certain conditions.}
\usage{
draw.pairwise.venn(area1, area2, cross.area, category = rep("", 2),
    euler.d = TRUE, scaled = TRUE, inverted = FALSE,
    ext.text = TRUE, ext.percent = rep(0.05, 3), lwd =
    rep(2, 2), lty = rep("solid", 2), col = rep("black",
    2), fill = NULL, alpha = rep(0.5, 2), label.col =
    rep("black", 3), cex = rep(1, 3), fontface =
    rep("plain", 3), fontfamily = rep("serif", 3), cat.pos
    = c(-50, 50), cat.dist = rep(0.025, 2), cat.cex =
    rep(1, 2), cat.col = rep("black", 2), cat.fontface =
    rep("plain", 2), cat.fontfamily = rep("serif", 2),
    cat.just = rep(list(c(0.5, 0.5)), 2), cat.default.pos
    = "outer", cat.prompts = FALSE, ext.pos = rep(0, 2),
    ext.dist = rep(0, 2), ext.line.lty = "solid",
    ext.length = rep(0.95, 2), ext.line.lwd = 1,
    rotation.degree = 0, rotation.centre = c(0.5, 0.5),
    ind = TRUE, sep.dist = 0.05, offset = 0, cex.prop =
    NULL, print.mode = "raw", sigdigs = 3, ...)
}
\arguments{
  \item{area1}{The size of the first set}
  \item{area2}{The size of the second set}
  \item{cross.area}{The size of the intersection between the sets}
  \item{category}{A vector (length 2) of strings giving the category names of the sets}
  \item{euler.d}{Boolean indicating whether to draw Euler diagrams when conditions are met or not (Venn Diagrams with moveable circles)}
  \item{scaled}{Boolean indicating whether to scale circle sizes in the diagram according to set sizes or not (euler.d must be true to enable this)}
  \item{inverted}{Boolean indicating whether the diagram should be mirrored long the vertical axis or not}
  \item{ext.text}{Boolean indicating whether to place area labels outside the circles in case of small partial areas or not}
  \item{ext.percent}{A vector (length 3) indicating the proportion that a partial area has to be smaller than to trigger external text placement.  The elements allow for individual control of the areas in the order of area1, area2 and intersect area.}
  \item{lwd}{A vector (length 2) of numbers giving the line width of the circles' circumferences}
  \item{lty}{A vector (length 2) giving the line dash pattern of the circles' circumferences}
  \item{col}{A vector (length 2) giving the colours of the circles' circumferences}
  \item{fill}{A vector (length 2) giving the colours of the circles' areas}
  \item{alpha}{A vector (length 2) giving the alpha transparency of the circles' areas}
  \item{label.col}{A vector (length 3) giving the colours of the areas' labels}
  \item{cex}{A vector (length 3) giving the size of the areas' labels}
  \item{fontface}{A vector (length 3) giving the fontface of the areas' labels}
  \item{fontfamily}{A vector (length 3) giving the fontfamily of the areas' labels}
  \item{cat.pos}{A vector (length 2) giving the positions (in degrees) of the category names along the circles, with 0 (default) at the 12 o'clock location}
  \item{cat.dist}{A vector (length 2) giving the distances (in npc units) of the category names from the edges of the circles (can be negative)}
  \item{cat.cex}{A vector (length 2) giving the size of the category names}
  \item{cat.col}{A vector (length 2) giving the colours of the category names}
  \item{cat.fontface}{A vector (length 2) giving the fontface of the category names}
  \item{cat.fontfamily}{A vector (length 2) giving the fontfamily of the category names}
  \item{cat.just}{List of 2 vectors of length 2 indicating horizontal and vertical justification of each category name}
  \item{cat.default.pos}{One of c('outer', 'text') to specify the default location of category names (cat.pos and cat.dist are handled differently)}
  \item{cat.prompts}{Boolean indicating whether to display help text on category name positioning or not)}
  \item{ext.pos}{A vector (length 1 or 2) giving the positions (in degrees) of the external area labels along the circles, with 0 (default) at 12 o'clock}
  \item{ext.dist}{A vector (length 1 or 2) giving how far to place the external area labels relative to its anchor point}
  \item{ext.line.lty}{A vector (length 1 or 2) giving the dash pattern of the lines connecting the external area labels to their anchor points}
  \item{ext.length}{A vector (length 1 or 2) giving the proportion of the lines connecting the external area labels to their anchor points actually drawn}
  \item{ext.line.lwd}{A vector (length 1 or 2) giving the width of the lines connecting the external area labels to their anchor points}
  \item{rotation.degree}{Number of degrees to rotate the entire diagram}
  \item{rotation.centre}{A vector (length 2) indicating (x,y) of the rotation centre}
  \item{ind}{Boolean indicating whether the function is to automatically draw the diagram before returning the gList object or not}
  \item{sep.dist}{Number giving the distance between circles in case of an Euler diagram showing mutually exclusive sets}
  \item{offset}{Number between 0 and 1 giving the amount of offset from the centre in case of an Euler diagram showing inclusive sets}
  \item{cex.prop}{A function or string used to rescale areas}
    \item{print.mode}{Can be either 'raw' or 'percent'. This is the format that the numbers will be printed in. Can pass in a vector with the second element being printed under the first}
  \item{sigdigs}{If one of the elements in print.mode is 'percent', then this is how many significant digits will be kept}
  \item{...}{Additional arguments to be passed, including \code{margin}, which indicates amount of whitespace around the final diagram in npc units}
  }
\details{
Euler diagrams are drawn for mutually exclusive sets (\code{cross.area == 0}), inclusive sets (\code{area1 == 0} or \code{area2 == 0}), and coincidental sets (\code{area1 == 0} and \code{area2 == 0)} if \code{euler.d == TRUE}.
The function defaults to placing the larger set on the left. \code{inverted} or \code{rotation.degree} can be used to reverse this.
}
\value{
Returns an object of class gList containing the grid objects that make up the diagram.  Also displays the diagram in a graphical device unless specified with ind = FALSE.
Grid::grid.draw can be used to draw the gList object in a graphical device.
}
\author{Hanbo Chen}
\examples{
# A simple two-set diagram
venn.plot <- draw.pairwise.venn(100, 70, 30, c("First", "Second"));
grid.draw(venn.plot);
grid.newpage();

# Same diagram as above, but without scaling
venn.plot <- draw.pairwise.venn(100, 70, 30, c("First", "Second"), scaled = FALSE);
grid.draw(venn.plot);
grid.newpage();

# A more complicated diagram Demonstrating external area labels
venn.plot <- draw.pairwise.venn(
	area1 = 100,
	area2 = 70,
	cross.area = 68,
	category = c("First", "Second"),
	fill = c("blue", "red"),
	lty = "blank",
	cex = 2,
	cat.cex = 2,
	cat.pos = c(285, 105),
	cat.dist = 0.09,
	cat.just = list(c(-1, -1), c(1, 1)),
	ext.pos = 30,
	ext.dist = -0.05,
	ext.length = 0.85,
	ext.line.lwd = 2,
	ext.line.lty = "dashed"
	);
grid.draw(venn.plot);
grid.newpage();

# Demonstrating an Euler diagram
venn.plot <- draw.pairwise.venn(
	area1 = 100,
	area2 = 70,
	cross.area = 0,
	category = c("First", "Second"),
	cat.pos = c(0, 180),
	euler.d = TRUE,
	sep.dist = 0.03,
	rotation.degree = 45
	);

# Writing to file
tiff(
    filename = tempfile(
        pattern = 'Pairwise_Venn_diagram',
        fileext = '.tiff'
        ),
    compression = "lzw");
    
grid.draw(venn.plot);
dev.off();
}
\keyword{hplot}
