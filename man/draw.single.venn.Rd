\name{draw.single.venn}
\alias{draw.single.venn}
\title{Draw a Venn Diagram with a Single Set}
\description{Creates a Venn diagram with a single set.}
\usage{
draw.single.venn(area, category = "", lwd = 2, lty = "solid", col = "black", fill = NULL,
	alpha = 0.5, label.col = "black", cex = 1, 
	fontface = "plain", fontfamily = "serif",
	cat.pos = 0, cat.dist = 0.025, cat.cex = 1, cat.col = "black",
	cat.fontface = "plain", cat.fontfamily = "serif",
	cat.just = list(c(0.5, 0.5)),
	cat.default.pos = "outer", cat.prompts = FALSE, rotation.degree = 0,
	rotation.centre = c(0.5, 0.5), ind = TRUE, ...)
}
\arguments{
  \item{area}{The size of the set}
  \item{category}{The category name of the set}
  \item{lwd}{width of the circle's circumference}
  \item{lty}{dash pattern of the circle's circumference}
  \item{col}{Colour of the circle's circumference}
  \item{fill}{Colour of the circle's area}
  \item{alpha}{Alpha transparency of the circle's area}
  \item{label.col}{Colour of the area label}
  \item{cex}{size of the area label}
  \item{fontface}{fontface of the area label}
  \item{fontfamily}{fontfamily of the area label}
  \item{cat.pos}{The position (in degrees) of the category name along the circle, with 0 (default) at 12 o'clock}
  \item{cat.dist}{The distance (in npc units) of the category name from the edge of the circle (can be negative)}
  \item{cat.cex}{size of the category name}
  \item{cat.col}{Colour of the category name}
  \item{cat.fontface}{fontface of the category name}
  \item{cat.fontfamily}{fontfamily of the category name}
  \item{cat.just}{List of 1 vector of length 2 indicating horizontal and vertical justification of the category name}
  \item{cat.default.pos}{One of c('outer', 'text') to specify the default location of category names (cat.pos and cat.dist are handled differently)}
  \item{cat.prompts}{Boolean indicating whether to display help text on category name positioning or not)}
  \item{rotation.degree}{Number of degrees to rotate the entire diagram}
  \item{rotation.centre}{A vector (length 2) indicating (x,y) of the rotation centre}
  \item{ind}{Boolean indicating whether the function is to automatically draw the diagram in the end or not}
  \item{...}{Additional arguments to be passed, including \code{margin}, which indicates amount of whitespace around the final diagram in npc units}
  }
\details{
This function mostly complements other functions in the VennDiagram package that draws multi-set diagrams by providing a function that draws single-set diagrams with similar graphical options.
}
\value{
Returns an object of class gList containing the grid objects that make up the diagram.  Also displays the diagram in a graphical device unless specified with ind = FALSE.
Grid::grid.draw can be used to draw the gList object in a graphical device.
}
\author{Hanbo Chen}
\examples{
# A simple single-set diagram
venn.plot <- draw.single.venn(100, "First");
grid.draw(venn.plot);
grid.newpage();

# A more complicated diagram
venn.plot <- draw.single.venn(
	area = 365,
	category = "All\nDays",
	lwd = 5,
	lty = "blank",
	cex = 3,
	label.col = "orange",
	cat.cex = 4,
	cat.pos = 180,
	cat.dist = -0.20,
	cat.col = "white",
	fill = "red",
	alpha = 0.15
	);
grid.draw(venn.plot);
grid.newpage();

# Writing to file
tiff(
    filename = tempfile(
        pattern = 'Single_Venn_diagram',
        fileext = '.tiff'
        ),
    compression = "lzw"
    );
    
venn.plot <- draw.single.venn(100, "First", ind = FALSE);
grid.draw(venn.plot);
dev.off();
}
\keyword{hplot}
