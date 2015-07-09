\name{draw.triple.venn}
\alias{draw.triple.venn}
\title{Draw a Venn Diagram with Three Sets}
\description{Creates a Venn diagram with three sets.  Creates Euler diagrams when the dataset meets certain conditions.}
\usage{
draw.triple.venn(area1, area2, area3, n12, n23, n13, n123, category =
    rep("", 3), rotation = 1, reverse = FALSE, euler.d =
    TRUE, scaled = TRUE, lwd = rep(2, 3), lty =
    rep("solid", 3), col = rep("black", 3), fill = NULL,
    alpha = rep(0.5, 3), label.col = rep("black", 7), cex
    = rep(1, 7), fontface = rep("plain", 7), fontfamily =
    rep("serif", 7), cat.pos = c(-40, 40, 180), cat.dist =
    c(0.05, 0.05, 0.025), cat.col = rep("black", 3),
    cat.cex = rep(1, 3), cat.fontface = rep("plain", 3),
    cat.fontfamily = rep("serif", 3), cat.just =
    list(c(0.5, 1), c(0.5, 1), c(0.5, 0)), cat.default.pos
    = "outer", cat.prompts = FALSE, rotation.degree = 0,
    rotation.centre = c(0.5, 0.5), ind = TRUE, sep.dist =
    0.05, offset = 0, cex.prop = NULL, print.mode = "raw",
    sigdigs = 3, direct.area = FALSE, area.vector = 0,
    ...)
}

\arguments{
  \item{area1}{The size of the first set}
  \item{area2}{The size of the second set}
  \item{area3}{The size of the third set}
  \item{n12}{The size of the intersection between the first and the second set}
  \item{n23}{The size of the intersection between the second and the third set}
  \item{n13}{The size of the intersection between the first and the third set}
  \item{n123}{The size of the intersection between all three sets}
  \item{category}{A vector (length 3) of strings giving the category names of the sets}
  \item{rotation}{1 (default), 2, or 3 indicating clockwise rotation of the three sets from the default arrangement}
  \item{reverse}{Boolean indicating whether the diagram should be mirrored long the vertical axis or not}
  \item{euler.d}{Boolean indicating whether to draw Euler diagrams when conditions are met or not (Venn Diagrams with moveable circles)}
  \item{scaled}{Boolean indicating whether to scale circle sizes in certain Euler diagrams according to set sizes or not (euler.d must be true to enable this)}
  \item{lwd}{A vector (length 3) of numbers giving the width of the circles' circumferences}
  \item{lty}{A vector (length 3) giving the dash pattern of the circles' circumferences}
  \item{col}{A vector (length 3) giving the colours of the circles' circumferences}
  \item{fill}{A vector (length 3) giving the colours of the circles' areas}
  \item{alpha}{A vector (length 3) giving the alpha transparency of the circles' areas}
  \item{label.col}{A vector (length 7) giving the colours of the areas' labels}
  \item{cex}{A vector (length 7) giving the size of the areas' labels}
  \item{fontface}{A vector (length 7) giving the fontface of the areas' labels}
  \item{fontfamily}{A vector (length 7) giving the fontfamily of the areas' labels}
  \item{cat.pos}{A vector (length 3) giving the positions (in degrees) of the category names along the circles, with 0 (default) at 12 o'clock}
  \item{cat.dist}{A vector (length 3) giving the distances (in npc units) of the category names from the edges of the circles (can be negative)}
  \item{cat.cex}{A vector (length 3) giving the size of the category names}
  \item{cat.col}{A vector (length 3) giving the colours of the category names}
  \item{cat.fontface}{A vector (length 3) giving the fontface of the category names}
  \item{cat.fontfamily}{A vector (length 3) giving the fontfamily of the category names}
  \item{cat.just}{List of 3 vectors of length 2 indicating horizontal and vertical justification of each category name}
  \item{cat.default.pos}{One of c('outer', 'text') to specify the default location of category names (cat.pos and cat.dist are handled differently)}
  \item{cat.prompts}{Boolean indicating whether to display help text on category name positioning or not)}
  \item{rotation.degree}{Number of degrees to rotate the entire diagram}
  \item{rotation.centre}{A vector (length 2) indicating (x,y) of the rotation centre}
  \item{ind}{Boolean indicating whether the function is to automatically draw the diagram before returning the gList object or not}
  \item{sep.dist}{Number between 0 and 1 giving the distance between circles in certain Euler diagrams with mutually exclusive sets}
  \item{offset}{Number giving the amount of offset from the centre in certain Euler diagrams with inclusive sets}
  \item{cex.prop}{A function or string used to rescale areas}
    \item{print.mode}{Can be either 'raw' or 'percent'. This is the format that the numbers will be printed in. Can pass in a vector with the second element being printed under the first}
  \item{sigdigs}{If one of the elements in print.mode is 'percent', then this is how many significant digits will be kept}
  \item{direct.area}{If this is equal to true, then the vector passed into area.vector will be directly assigned to the areas of the corresponding regions. Only use this if you know which positions in the vector correspond to which regions in the diagram}
  \item{area.vector}{An argument to be used when direct.area is true. These are the areas of the corresponding regions in the Venn Diagram}
  \item{...}{Additional arguments to be passed, including \code{margin}, which indicates amount of whitespace around the final diagram in npc units}
  }
\details{
Euler diagrams are drawn for 19 special cases if \code{euler.d == TRUE}.  Certain Euler diagrams make use of the \code{scaled}, \code{sep.dist}, or \code{offset} arguments specific to two-set Venn diagrams where appropriate.
The function defaults to placing the three circles in a triangular arrangement with two sets on top and one set below.  The circles correspond to area1, area2 and area3 in a clockwise fashion with area1 on the top left.
N.B. General scaling for three-set Venn diagrams are disabled due to potentially misleading visual representation of the data.  To re-enable, assign any value to variable \code{overrideTriple}.
}
\value{
Returns an object of class gList containing the grid objects that make up the diagram.  Also displays the diagram in a graphical device unless specified with ind = FALSE.
Grid::grid.draw can be used to draw the gList object in a graphical device.
}
\author{Hanbo Chen}
\examples{
# A simple three-set diagram
venn.plot <- draw.triple.venn(65, 75, 85,
 35, 15, 25, 5, c("First", "Second", "Third"));
grid.draw(venn.plot);
grid.newpage();

# A more complicated diagram
venn.plot <- draw.triple.venn(
	area1 = 65,
	area2 = 75,
	area3 = 85,
	n12 = 35,
	n23 = 15,
	n13 = 25,
	n123 = 5,
	category = c("First", "Second", "Third"),
	fill = c("blue", "red", "green"),
	lty = "blank",
	cex = 2,
	cat.cex = 2,
	cat.col = c("blue", "red", "green")
	);
grid.draw(venn.plot);
grid.newpage();

# Demonstrating an Euler diagram
venn.plot <- draw.triple.venn(20, 40, 60, 0, 0, 0, 0,
 c("First", "Second", "Third"), sep.dist = 0.1, rotation.degree = 30);

# Writing to file
tiff(filename = "Triple_Venn_diagram.tiff", compression = "lzw");
grid.draw(venn.plot);
dev.off();
}
\keyword{hplot}
