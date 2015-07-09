\name{venn.diagram}
\alias{venn.diagram}
\title{Make a Venn Diagram}
\description{This function takes a list and creates a publication-quality TIFF Venn 
Diagram}
\usage{
venn.diagram(x, filename, height = 3000, width = 3000, resolution =
    500, imagetype = "tiff", units = "px", compression =
    "lzw", na = "stop", main = NULL, sub = NULL, main.pos
    = c(0.5, 1.05), main.fontface = "plain",
    main.fontfamily = "serif", main.col = "black",
    main.cex = 1, main.just = c(0.5, 1), sub.pos = c(0.5,
    1.05), sub.fontface = "plain", sub.fontfamily =
    "serif", sub.col = "black", sub.cex = 1, sub.just =
    c(0.5, 1), category.names = names(x), force.unique =
    TRUE, print.mode = "raw", sigdigs = 3, direct.area =
    FALSE, area.vector = 0, ...)
}
\arguments{
  \item{x}{A list of vectors (e.g., integers, chars), with each component corresponding 
  to a separate circle in the Venn diagram}
  \item{filename}{Filename for image output, or if NULL returns the grid object itself}
  \item{height}{Integer giving the height of the output figure in units}
  \item{width}{Integer giving the width of the output figure in units}
  \item{resolution}{Resolution of the final figure in DPI}
  \item{imagetype}{Specification of the image format (e.g. tiff, png or svg)}
  \item{units}{Size-units to use for the final figure}
  \item{compression}{What compression algorithm should be applied to the final tiff}
  \item{na}{Missing value handling method: "none", "stop", "remove"}
  \item{main}{Character giving the main title of the diagram}
  \item{sub}{Character giving the subtitle of the diagram}
  \item{main.pos}{Vector of length 2 indicating (x,y) of the main title}
  \item{main.fontface}{Character giving the fontface (font style) of the main title}
  \item{main.fontfamily}{Character giving the fontfamily (font type) of the main title}
  \item{main.col}{Character giving the colour of the main title}
  \item{main.cex}{Number giving the cex (font size) of the main title}
  \item{main.just}{Vector of length 2 indicating horizontal and vertical justification 
  of the main title}
  \item{sub.pos}{Vector of length 2 indicating (x,y) of the subtitle}
  \item{sub.fontface}{Character giving the fontface (font style) of the subtitle}
  \item{sub.fontfamily}{Character giving the fontfamily (font type) of the subtitle}
  \item{sub.col}{Character Colour of the subtitle}
  \item{sub.cex}{Number giving the cex (font size) of the subtitle}
  \item{sub.just}{Vector of length 2 indicating horizontal and vertical justification of 
  the subtitle}
  \item{category.names}{Allow specification of category names using plotmath syntax}
  \item{force.unique}{Logical specifying whether to use only unique elements in each item
   of the input list or use all elements. Defaults to FALSE}
     \item{print.mode}{Can be either 'raw' or 'percent'. This is the format that the numbers will be printed in. Can pass in a vector with the second element being printed under the first}
  \item{sigdigs}{If one of the elements in print.mode is 'percent', then this is how many significant digits will be kept}
  \item{direct.area}{If this is equal to true, then the vector passed into area.vector will be directly assigned to the areas of the corresponding regions. Only use this if you know which positions in the vector correspond to which regions in the diagram}
  \item{area.vector}{An argument to be used when direct.area is true. These are the areas of the corresponding regions in the Venn Diagram}
  \item{...}{A series of graphical parameters tweaking the plot. See below for details}
  }
\details{
\tabular{cccl}{
  \bold{Argument}       \tab \bold{Venn Sizes} \tab \bold{Class}    
  \tab \bold{Description}\cr
  \code{lwd}            \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector giving the width of each circle's circumference\cr
  \code{lty}            \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector giving the dash pattern of each circle's circumference\cr
  \code{col}            \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the colour of each circle's circumference\cr
  \code{fill}           \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the colour of each circle's area\cr
  \code{alpha}          \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector giving the alpha transparency of each circle's area\cr
  \code{label.col}      \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the colour for each area label (length = 1/3/7/15 based on 
  set-number)\cr
  \code{cex}            \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector giving the size for each area label (length = 1/3/7/15 based on 
  set-number)\cr
  \code{fontface}       \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the fontface for each area label (length = 1/3/7/15 based on 
  set-number)\cr
  \code{fontfamily}     \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the fontfamily for each area label (length = 1/3/7/15 based on 
  set-number)\cr
  \code{cat.pos}        \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector giving the position (in degrees) of each category name along the circle, 
  with 0 at 12 o'clock\cr
  \code{cat.dist}       \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector giving the distance (in npc units) of each category name from the edge of 
  the circle (can be negative)\cr
  \code{cat.cex}        \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector giving the size for each category name\cr
  \code{cat.col}        \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the colour for each category name\cr
  \code{cat.fontface}   \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the fontface for each category name\cr
  \code{cat.fontfamily} \tab 1,2,3,4,5           \tab \var{character} 
  \tab Vector giving the fontfamily for each category name\cr
  \code{cat.just}       \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab List (length = 1/2/3/4 based on set number) of Vectors of length 2 indicating 
  horizontal and vertical justification for each category name\cr
  \code{cat.default.pos}\tab 1,2,3               \tab \var{character} 
  \tab One of c('outer', 'text') to specify the default location of category names 
  (cat.pos and cat.dist are handled differently)\cr
  \code{margin}         \tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Number giving the amount of whitespace around the diagram in grid units\cr
  \code{rotation.degree}\tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Number of degrees to rotate the entire diagram\cr
  \code{rotation.centre}\tab 1,2,3,4,5           \tab \var{numeric}   
  \tab Vector of length 2 indicating (x,y) of the rotation centre\cr
  \code{rotation}       \tab 3                   \tab \var{numeric}   
  \tab Number giving the clockwise rotation of a three-set Venn diagram (1, 2, or 3)\cr
  \code{reverse}        \tab 3                   \tab \var{logical}   
  \tab Reflect the three-set Venn diagram along its central vertical axis of symmetry.  
  Use in combination with \code{rotation} to generate all possible set orders\cr
  \code{euler.d}        \tab 2, 3                \tab \var{logical}   
  \tab Enable Euler diagrams for two-set and three-set Venn diagrams 
  (Venn Diagrams with moveable circles)\cr
  \code{scaled}         \tab 2, 3                \tab \var{logical}   
  \tab Enable scaling for two-set and certain three-set Euler diagrams. 
  (euler.d must be true to enable this)\cr
  \code{sep.dist}       \tab 2, 3                \tab \var{numeric}   
  \tab Controls the separation between distinct circles in certain two-set or three-set 
  Euler diagrams.\cr
  \code{offset}         \tab 2, 3                \tab \var{numeric}   
  \tab Number between 0 and 1 giving the amount to offset the smaller circle by in the 
  inclusion type of two-set Euler diagram and certain similar three-set Euler 
  diagrams.\cr
  \code{inverted}       \tab 2                   \tab \var{logical}   
  \tab Flip the two-set Venn diagram along its vertical axis (distinguished from 
  \code{reverse})\cr
  \code{ext.text}       \tab 2                   \tab \var{logical}   
  \tab Allow external text labels when areas are small\cr
  \code{ext.percent}    \tab 2                   \tab \var{numeric}   
  \tab A vector (length 3) indicating the proportion that a partial area has to be 
  smaller than to trigger external text placement.  The elements allow for individual 
  control of the areas in the order of the first area, second area and intersection 
  area.\cr
  \code{ext.line.lwd}   \tab 2                   \tab \var{numeric}   
  \tab lwd of line connecting to \code{ext.text}\cr
  \code{ext.dist}       \tab 2                   \tab \var{numeric}   
  \tab Vector of length 1 or 2 indicating length of external line (use negative values 
  to shorten the line )\cr
  \code{ext.length}     \tab 2                   \tab \var{numeric}   
  \tab Vector of length 1 or 2 indicating the proportion of the external line that is 
  drawn from the anchor to the text\cr
  }
}
\value{Plots a figure to the file given by the \var{filename} argument.}
\author{Hanbo Chen}
\seealso{
\code{\link{draw.single.venn}}, \code{\link{draw.pairwise.venn}}, 
\code{\link{draw.triple.venn}}, \code{\link{draw.quad.venn}}, 
\code{\link{draw.quintuple.venn}}
}
\examples{
# Note: most examples are listed as dontrun to meet CRAN requirements, 
# but all should work as-is!

# compact and minimal notation
\dontrun{
venn.plot <- venn.diagram(
	list(A = 1:150, B = 121:170), 
	"Venn_2set_simple.tiff"
	);
venn.plot <- venn.diagram(
	list(A = 1:150, B = 121:170, C = 101:200), 
	"Venn_3set_simple.tiff"
	);
}

# a more elaborate two-set Venn diagram with title and subtitle
venn.plot <- venn.diagram(
	x = list(
		"A" = 1:100,
		"B" = 96:140
		),
	filename = "Venn_2set_complex.tiff",
	scaled = TRUE,
	ext.text = TRUE,
	ext.line.lwd = 2,
	ext.dist = -0.15,
	ext.length = 0.9,
	ext.pos = -4,
	inverted = TRUE,
	cex = 2.5,
	cat.cex = 2.5,
	rotation.degree = 45,
	main = "Complex Venn Diagram",
	sub = "Featuring: rotation and external lines",
	main.cex = 2,
	sub.cex = 1
	);

\dontrun{
# sample three-set Euler diagram
venn.plot <- venn.diagram(
	x = list(
		"Num A" = paste("Num", 1:100),
		"Num B" = c(paste("Num", 61:70), paste("Num", 71:100)),
		"Num C" = c(paste("Num", 41:60), paste("Num", 61:70))),
	euler.d = TRUE,
	filename = "Euler_3set_simple.tiff",
	cat.pos = c(-20, 0, 20),
	cat.dist = c(0.05, 0.05, 0.02),
	cex = 2.5,
	cat.cex = 2.5,
	reverse = TRUE
	);

# sample three-set Euler diagram
venn.plot <- venn.diagram(
	x = list(
		A = c(1:10),
		B = c(11:90),
		C = c(81:90)
		),
	euler.d = TRUE,
	filename = "Euler_3set_scaled.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.pos = 0
	);
}

# sample four-set Venn Diagram
A <- sample(1:1000, 400, replace = FALSE);
B <- sample(1:1000, 600, replace = FALSE);
C <- sample(1:1000, 350, replace = FALSE);
D <- sample(1:1000, 550, replace = FALSE);
E <- sample(1:1000, 375, replace = FALSE);

venn.plot <- venn.diagram(
	x = list(
		A = A,
		D = D,
		B = B,
		C = C
		),
	filename = "Venn_4set_pretty.tiff",
	col = "transparent",
	fill = c("cornflowerblue", "green", "yellow", "darkorchid1"),
	alpha = 0.50,
	label.col = c("orange", "white", "darkorchid4", "white", 
	"white", "white", "white", "white", "darkblue", "white", 
	"white", "white", "white", "darkgreen", "white"),
	cex = 1.5,
	fontfamily = "serif",
	fontface = "bold",
	cat.col = c("darkblue", "darkgreen", "orange", "darkorchid4"),
	cat.cex = 1.5,
	cat.pos = 0,
	cat.dist = 0.07,
	cat.fontfamily = "serif",
	rotation.degree = 270,
	margin = 0.2
	);

# sample five-set Venn Diagram
venn.plot <- venn.diagram(
	x = list(
		A = A,
		B = B,
		C = C,
		D = D,
		E = E
		),
	filename = "Venn_5set_pretty.tiff",
	col = "black",
	fill = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
	alpha = 0.50,
	cex = c(1.5, 1.5, 1.5, 1.5, 1.5, 1, 0.8, 1, 0.8, 1, 0.8, 1, 0.8,
	 1, 0.8, 1, 0.55, 1, 0.55, 1, 0.55, 1, 0.55, 1, 0.55, 1, 1, 1, 1, 1, 1.5),
	cat.col = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
	cat.cex = 1.5,
	cat.fontface = "bold",
	margin = 0.05
	);

# Complex three-way Venn with labels & sub-/super-scripts	
venn.plot <- venn.diagram(
	x = list(
		I = c(1:60, 61:105, 106:140, 141:160, 166:175, 176:180, 181:205, 
		206:220),
		II = c(531:605, 476:530, 336:375, 376:405, 181:205, 206:220, 166:175, 
		176:180),
		III = c(61:105, 106:140, 181:205, 206:220, 221:285, 286:335, 336:375, 
		376:405)
		),
	category.names = c(
		expression( bold('A'['1: subscript']) ),
		expression( bold('B'^'2: going up') ),
		expression( paste(bold('C'^'3'), bold('X'['i' <= 'r'^'2']^'2') ) )
		),
	filename = 'Fig3-1_triple_labels_sub_and_superscripts.tiff',
	output = TRUE,
	height = 3000,
	width = 3000,
	resolution = 300,
	compression = 'lzw',
	units = 'px',
	lwd = 6,
	lty = 'blank',
	fill = c('yellow', 'purple', 'green'),
	cex = 3.5,
	fontface = "bold",
	fontfamily = "sans",
	cat.cex = 3,
	cat.fontface = "bold",
	cat.default.pos = "outer",
	cat.pos = c(-27, 27, 135),
	cat.dist = c(0.055, 0.055, 0.085),
	cat.fontfamily = "sans",
	rotation = 1
	);

# Complex 3-way Venn using expressions
venn.plot <- venn.diagram(
   x = list(
		"Num A" = paste("Num", 1:100),
		"Num B" = c(paste("Num", 61:70), paste("Num", 71:100)),
		"Num C" = c(paste("Num", 41:60), paste("Num", 61:70))),
	category.names = c(
		expression( bold('A'['1']) ),
		expression( bold('A'['2']) ),
		expression( bold('A'['3']) )
		),
	euler.d = TRUE,
	filename = "Fig3-2_Euler_3set_simple_with_subscripts.tiff",
	cat.pos = c(-20, 0, 20),
	cat.dist = c(0.05, 0.05, 0.02),
	cex = 2.5,
	cat.cex = 2.5,
	reverse = TRUE
	);

\dontrun{
# Example to print to screen
venn.plot <- venn.diagram(
	x = list(
			sample1 = c(1:40),
			sample2 = c(30:60)
			),
		filename = NULL
		);

# Save picture to non-TIFF file type
# currently working on adding this functionality directly into venn.diagram
venn.plot <- venn.diagram(
	x = list (
		A = 1:10,
		B = 6:25
		),
	filename = NULL
	);

jpeg("venn_jpeg.jpg");
grid.draw(venn.plot);
dev.off();

}

#dontrun-starts-here
### NB: All figures from the paper can be run, but are turned off from
###     automatic execution to reduce burden on CRAN computing resources.
\dontrun{
# Figure 1A
venn.plot <- venn.diagram(
	x = list(
		Label = 1:100
		),
	filename = "1A-single_Venn.tiff",
	col = "black",
	lwd = 9,
	fontface = "bold",
	fill = "grey",
	alpha = 0.75,
	cex = 4,
	cat.cex = 3,
	cat.fontface = "bold",
	);

# Figure 1B
venn.plot <- venn.diagram(
	x = list(
		X = 1:150,
		Y = 121:180
		),
	filename = "1B-double_Venn.tiff",
	lwd = 4,
	fill = c("cornflowerblue", "darkorchid1"),
	alpha = 0.75,
	label.col = "white",
	cex = 4,
	fontfamily = "serif",
	fontface = "bold",
	cat.col = c("cornflowerblue", "darkorchid1"),
	cat.cex = 3,
	cat.fontfamily = "serif",
	cat.fontface = "bold",
	cat.dist = c(0.03, 0.03),
	cat.pos = c(-20, 14)
	);

# Figure 1C
venn.plot <- venn.diagram(
	x = list(
		R = c(1:70, 71:110, 111:120, 121:140),
		B = c(141:200, 71:110, 111:120, 201:230),
		G = c(231:280, 111:120, 121:140, 201:230)
		),
	filename = "1C-triple_Venn.tiff",
	col = "transparent",
	fill = c("red", "blue", "green"),
	alpha = 0.5,
	label.col = c("darkred", "white", "darkblue", "white",
	 "white", "white", "darkgreen"),
	cex = 2.5,
	fontfamily = "serif",
	fontface = "bold",
	cat.default.pos = "text",
	cat.col = c("darkred", "darkblue", "darkgreen"),
	cat.cex = 2.5,
	cat.fontfamily = "serif",
	cat.dist = c(0.06, 0.06, 0.03),
	cat.pos = 0
	);

# Figure 1D
venn.plot <- venn.diagram(
	x = list(
		I = c(1:60, 61:105, 106:140, 141:160, 166:175, 176:180, 181:205, 
		206:220),
		IV = c(531:605, 476:530, 336:375, 376:405, 181:205, 206:220, 166:175, 
		176:180),
		II = c(61:105, 106:140, 181:205, 206:220, 221:285, 286:335, 336:375, 
		376:405),
		III = c(406:475, 286:335, 106:140, 141:160, 166:175, 181:205, 336:375, 
		476:530)
		),
	filename = "1D-quadruple_Venn.tiff",
	col = "black",
	lty = "dotted",
	lwd = 4,
	fill = c("cornflowerblue", "green", "yellow", "darkorchid1"),
	alpha = 0.50,
	label.col = c("orange", "white", "darkorchid4", "white", "white", "white",
	 "white", "white", "darkblue", "white",
	  "white", "white", "white", "darkgreen", "white"),
	cex = 2.5,
	fontfamily = "serif",
	fontface = "bold",
	cat.col = c("darkblue", "darkgreen", "orange", "darkorchid4"),
	cat.cex = 2.5,
	cat.fontfamily = "serif"
	);

# Figure 2-1
venn.plot <- venn.diagram(
	x = list(
		A = 1:105,
		B = 101:115
		),
	filename = "2-1_special_case_ext-text.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.pos = c(-20, 20),
	ext.line.lty = "dotted",
	ext.line.lwd = 2,
	ext.pos = 12,
	ext.dist = -0.12,
	ext.length = 0.85
	);

# Figure 2-2
venn.plot <- venn.diagram(
	x = list(
		A = 1:100,
		B = 1:10
		),
	filename = "2-2_special_case_pairwise-inclusion.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.pos = 0
	);

# Figure 2-3
venn.plot <- venn.diagram(
	x = list(
		A = 1:150,
		B = 151:250
		),
	filename = "2-3_special_case_pairwise-exclusion.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.pos = c(0, 0),
	cat.dist = 0.05
	);

# Figure 2-4
venn.plot <- venn.diagram(
	x = list(
		A = c(1:50, 101:140, 141:160, 161:170),
		B = c(171:230, 101:140, 161:170, 291:320),
		C = c(141:160, 161:170, 291:320)
		),
	filename = "2-4_triple_special_case-001.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.dist = c(0.05, 0.05, -0.1)
	);

# Figure 2-5
venn.plot <- venn.diagram(
	x = list(
		A = c(1:100),
		B = c(61:70, 71:100),
		C = c(41:60, 61:70)
		),
	filename = "2-5_triple_special_case-012AA.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.pos = c(-25, 0, 30),
	cat.dist = c(0.05, 0.05, 0.02)
	);

# Figure 2-6
venn.plot <- venn.diagram(
	x = list(
		A = c(1:90),
		B = c(1:25),
		C = c(1:5)
		),
	filename = "2-6_triple_special_case-022AAAO.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.pos = 0,
	cat.dist = c(0.03, 0.03, 0.01)
	);

# Figure 2-7
venn.plot <- venn.diagram(
	x = list(
		A = c(1:20),
		B = c(21:80),
		C = c(81:210)
		),
	filename = "2-7_triple_special_case-100.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.dist = 0.05
	);

# Figure 2-8
venn.plot <- venn.diagram(
	x = list(
		A = c(1:80),
		B = c(41:150),
		C = c(71:100)
		),
	filename = "2-8_triple_special_case-011A.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.dist = c(0.07, 0.07, 0.02),
	cat.pos = c(-20, 20, 20)
	);

# Figure 2-9
venn.plot <- venn.diagram(
	x = list(
		A = c(1:10),
		B = c(11:90),
		C = c(81:90)
		),
	filename = "2-9_triple_special_case-121AO.tiff",
	cex = 2.5,
	cat.cex = 2.5,
	cat.pos = 0,
	cat.dist = c(0.04, 0.04, 0.02),
	reverse = TRUE
	);

#dontrun-ends-here
}
}
\keyword{hplot}
