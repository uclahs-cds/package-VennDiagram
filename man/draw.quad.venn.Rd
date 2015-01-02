\name{draw.quad.venn}
\alias{draw.quad.venn}
\title{Draw a Venn Diagram with Four Sets}
\description{Creates a Venn diagram with four sets.}
\usage{
draw.quad.venn(area1, area2, area3, area4, n12, n13, n14, n23, n24, n34, n123, n124,
	n134, n234, n1234, category = rep("", 4), lwd = rep(2, 4), lty = rep("solid", 4),
	col = rep("black", 4), fill = NULL, alpha = rep(0.5, 4),
	label.col = rep("black", 15), cex = rep(1, 15), fontface = rep("plain", 15),
	fontfamily = rep("serif", 15), cat.pos = c(-15, 15, 0, 0),
	cat.dist = c(0.22, 0.22, 0.11, 0.11), cat.col = rep("black", 4),
	cat.cex = rep(1, 4), cat.fontface = rep("plain", 4), 
	cat.fontfamily = rep("serif", 4), cat.just = rep(list(c(0.5, 0.5)), 4),
	rotation.degree = 0, rotation.centre = c(0.5, 0.5), ind = TRUE,
	cex.prop = NULL, ...)
}
\arguments{
  \item{area1}{The size of the first set}
  \item{area2}{The size of the second set}
  \item{area3}{The size of the third set}
  \item{area4}{The size of the fourth set}
  \item{n12}{The size of the intersection between the first and the second set}
  \item{n13}{The size of the intersection between the first and the third set}
  \item{n14}{The size of the intersection between the first and the fourth set}
  \item{n23}{The size of the intersection between the second and the third set}
  \item{n24}{The size of the intersection between the second and the fourth set}
  \item{n34}{The size of the intersection between the third and the fourth set}
  \item{n123}{The size of the intersection between the first, second and third sets}
  \item{n124}{The size of the intersection between the first, second and fourth sets}
  \item{n134}{The size of the intersection between the first, third and fourth sets}
  \item{n234}{The size of the intersection between the second, third and fourth sets}
  \item{n1234}{The size of the intersection between all four sets}
  \item{category}{A vector (length 4) of strings giving the category names of the sets}
  \item{lwd}{A vector (length 4) of numbers giving the line width of the circles' circumferences}
  \item{lty}{A vector (length 4) giving the dash pattern of the circles' circumferences}
  \item{col}{A vector (length 4) giving the colours of the circles' circumferences}
  \item{fill}{A vector (length 4) giving the colours of the circles' areas}
  \item{alpha}{A vector (length 4) giving the alpha transparency of the circles' areas}
  \item{label.col}{A vector (length 15) giving the colours of the areas' labels}
  \item{cex}{A vector (length 15) giving the size of the areas' labels}
  \item{fontface}{A vector (length 15) giving the fontface of the areas' labels}
  \item{fontfamily}{A vector (length 15) giving the fontfamily of the areas' labels}
  \item{cat.pos}{A vector (length 4) giving the positions (in degrees) of the category names along the circles, with 0 (default) at 12 o'clock}
  \item{cat.dist}{A vector (length 4) giving the distances (in npc units) of the category names from the edges of the circles (can be negative)}
  \item{cat.cex}{A vector (length 4) giving the size of the category names}
  \item{cat.col}{A vector (length 4) giving the colours of the category names}
  \item{cat.fontface}{A vector (length 4) giving the fontface of the category names}
  \item{cat.fontfamily}{A vector (length 4) giving the fontfamily of the category names}
  \item{cat.just}{List of 4 vectors of length 2 indicating horizontal and vertical justification of each category name}
  \item{rotation.degree}{Number of degrees to rotate the entire diagram}
  \item{rotation.centre}{A vector (length 2) indicating (x,y) of the rotation centre}
  \item{ind}{Boolean indicating whether the function is to automatically draw the diagram before returning the gList object or not}
  \item{cex.prop}{A function or string used to rescale areas}
  \item{...}{Additional arguments to be passed, including \code{margin}, which indicates amount of whitespace around the final diagram in npc units}
  }
\details{
The function defaults to placing the ellipses so that area1 corresponds to lower left, area2 corresponds to lower right, area3 corresponds to middle left and area4 corresponds to middle right.
Refer to the example below to see how the 31 partial areas are ordered.  Arguments with length of 15 (label.col, cex, fontface, fontfamily) will follow the order in the example.
}
\value{
Returns an object of class gList containing the grid objects that make up the diagram.  Also displays the diagram in a graphical device unless specified with ind = FALSE.
Grid::grid.draw can be used to draw the gList object in a graphical device.
}
\author{Hanbo Chen}
\examples{
# Reference four-set diagram
venn.plot <- draw.quad.venn(
	area1 = 72,
	area2 = 86,
	area3 = 50,
	area4 = 52,
	n12 = 44,
	n13 = 27,
	n14 = 32,
	n23 = 38,
	n24 = 32,
	n34 = 20,
	n123 = 18,
	n124 = 17,
	n134 = 11,
	n234 = 13,
	n1234 = 6,
	category = c("First", "Second", "Third", "Fourth"),
	fill = c("orange", "red", "green", "blue"),
	lty = "dashed",
	cex = 2,
	cat.cex = 2,
	cat.col = c("orange", "red", "green", "blue")
	);

# Writing to file
tiff(filename = "Quad_Venn_diagram.tiff", compression = "lzw");
grid.draw(venn.plot);
dev.off();
}
\keyword{hplot}
