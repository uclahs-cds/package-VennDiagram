\name{draw.quintuple.venn}
\alias{draw.quintuple.venn}
\title{Draw a Venn Diagram with Five Sets}
\description{Creates a Venn diagram with five sets.}
\usage{
draw.quintuple.venn(area1, area2, area3, area4, area5, n12, n13, n14, n15, n23, n24, n25,
	n34, n35, n45, n123, n124, n125, n134, n135, n145, n234, n235, n245, n345, n1234,
	n1235, n1245, n1345, n2345, n12345, category = rep("", 5), lwd = rep(2, 5),
	lty = rep("solid", 5), col = rep("black", 5), fill = NULL, alpha = rep(0.5, 5),
	label.col = rep("black", 31), cex = rep(1, 31), fontface = rep("plain", 31),
	fontfamily = rep("serif", 31), cat.pos = c(0, 287.5, 215, 145, 70),
	cat.dist = rep(0.2, 5), cat.col = rep("black", 5), cat.cex = rep(1, 5),
	cat.fontface = rep("plain", 5), cat.fontfamily = rep("serif", 5),
	cat.just = rep(list(c(0.5, 0.5)), 5), rotation.degree = 0,
	rotation.centre = c(0.5, 0.5), ind = TRUE, cex.prop = NULL, ...)
}
\arguments{
  \item{area1}{The size of the first set}
  \item{area2}{The size of the second set}
  \item{area3}{The size of the third set}
  \item{area4}{The size of the fourth set}
  \item{area5}{The size of the fifth set}
  \item{n12}{The size of the intersection between the first and the second set}
  \item{n13}{The size of the intersection between the first and the third set}
  \item{n14}{The size of the intersection between the first and the fourth set}
  \item{n15}{The size of the intersection between the first and the fifth set}
  \item{n23}{The size of the intersection between the second and the third set}
  \item{n24}{The size of the intersection between the second and the fourth set}
  \item{n25}{The size of the intersection between the second and the fifth set}
  \item{n34}{The size of the intersection between the third and the fourth set}
  \item{n35}{The size of the intersection between the third and the fifth set}
  \item{n45}{The size of the intersection between the fourth and the fifth set}
  \item{n123}{The size of the intersection between the first, second and third sets}
  \item{n124}{The size of the intersection between the first, second and fourth sets}
  \item{n125}{The size of the intersection between the first, second and fifth sets}
  \item{n134}{The size of the intersection between the first, third and fourth sets}
  \item{n135}{The size of the intersection between the first, third and fifth sets}
  \item{n145}{The size of the intersection between the first, fourth and fifth sets}
  \item{n234}{The size of the intersection between the second, third and fourth sets}
  \item{n235}{The size of the intersection between the second, third and fifth sets}
  \item{n245}{The size of the intersection between the second, fourth and fifth sets}
  \item{n345}{The size of the intersection between the third, fourth and fifth sets}
  \item{n1234}{The size of the intersection between the first, second, third and fourth sets}
  \item{n1235}{The size of the intersection between the first, second, third and fifth sets}
  \item{n1245}{The size of the intersection between the first, second, fourth and fifth sets}
  \item{n1345}{The size of the intersection between the first, third, fourth and fifth sets}
  \item{n2345}{The size of the intersection between the second, third, fourth and fifth sets}
  \item{n12345}{The size of the intersection between all five sets}
  \item{category}{A vector (length 5) of strings giving the category names of the sets}
  \item{lwd}{A vector (length 5) of numbers giving the line width of the circles' circumferences}
  \item{lty}{A vector (length 5) giving the dash pattern of the circles' circumferences}
  \item{col}{A vector (length 5) giving the colours of the circles' circumferences}
  \item{fill}{A vector (length 5) giving the colours of the circles' areas}
  \item{alpha}{A vector (length 5) giving the alpha transparency of the circles' areas}
  \item{label.col}{A vector (length 31) giving the colours of the areas' labels}
  \item{cex}{A vector (length 31) giving the size of the areas' labels}
  \item{fontface}{A vector (length 31) giving the fontface of the areas' labels}
  \item{fontfamily}{A vector (length 31) giving the fontfamily of the areas' labels}
  \item{cat.pos}{A vector (length 5) giving the positions (in degrees) of the category names along the circles, with 0 (default) at 12 o'clock}
  \item{cat.dist}{A vector (length 5) giving the distances (in npc units) of the category names from the edges of the circles (can be negative)}
  \item{cat.cex}{A vector (length 5) giving the size of the category names}
  \item{cat.col}{A vector (length 5) giving the colours of the category names}
  \item{cat.fontface}{A vector (length 5) giving the fontface of the category names}
  \item{cat.fontfamily}{A vector (length 5) giving the fontfamily of the category names}
  \item{cat.just}{List of 5 vectors of length 2 indicating horizontal and vertical justification of each category name}
  \item{rotation.degree}{Number of degrees to rotate the entire diagram}
  \item{rotation.centre}{A vector (length 2) indicating (x,y) of the rotation centre}
  \item{ind}{Boolean indicating whether the function is to automatically draw the diagram before returning the gList object or not}
  \item{cex.prop}{A function or string used to rescale areas}
  \item{...}{Additional arguments to be passed, including \code{margin}, which indicates amount of whitespace around the final diagram in npc units}
  }
\details{
The function defaults to placing the ellipses representing the areas 1 to 5 in a counterclockwise fashion.  Refer to the example below to see how the 31 partial areas are
ordered.  Arguments with length of 31 (label.col, cex, fontface, fontfamily) will follow the order in the example.
}
\value{
Returns an object of class gList containing the grid objects that make up the diagram.  Also displays the diagram in a graphical device unless specified with ind = FALSE.
Grid::grid.draw can be used to draw the gList object in a graphical device.
}
\author{Hanbo Chen}
\examples{
# Reference five-set diagram
venn.plot <- draw.quintuple.venn(
	area1 = 301,
	area2 = 321,
	area3 = 311,
	area4 = 321,
	area5 = 301,
	n12 = 188,
	n13 = 191,
	n14 = 184,
	n15 = 177,
	n23 = 194,
	n24 = 197,
	n25 = 190,
	n34 = 190,
	n35 = 173,
	n45 = 186,
	n123 = 112,
	n124 = 108,
	n125 = 108,
	n134 = 111,
	n135 = 104,
	n145 = 104,
	n234 = 111,
	n235 = 107,
	n245 = 110,
	n345 = 100,
	n1234 = 61,
	n1235 = 60,
	n1245 = 59,
	n1345 = 58,
	n2345 = 57,
	n12345 = 31,
	category = c("A", "B", "C", "D", "E"),
	fill = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
	cat.col = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
	cat.cex = 2,
	margin = 0.05,
	cex = c(1.5, 1.5, 1.5, 1.5, 1.5, 1, 0.8, 1, 0.8, 1, 0.8, 1, 0.8, 1, 0.8, 
	1, 0.55, 1, 0.55, 1, 0.55, 1, 0.55, 1, 0.55, 1, 1, 1, 1, 1, 1.5),
	ind = TRUE
	);

# Writing to file
tiff(filename = "Quintuple_Venn_diagram.tiff", compression = "lzw");
grid.draw(venn.plot);
dev.off();
}
\keyword{hplot}
