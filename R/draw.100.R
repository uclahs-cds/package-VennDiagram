# The VennDiagram package is copyright (c) 2012 Ontario Institute for Cancer Research (OICR)
# This package and its accompanying libraries is free software; you can redistribute it and/or modify it under the terms of the GPL
# (either version 1, or at your option, any later version) or the Artistic License 2.0.  Refer to LICENSE for the full license text.
# OICR makes no representations whatsoever as to the SOFTWARE contained herein.  It is experimental in nature and is provided WITHOUT
# WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE OR ANY OTHER WARRANTY, EXPRESS OR IMPLIED. OICR MAKES NO REPRESENTATION
# OR WARRANTY THAT THE USE OF THIS SOFTWARE WILL NOT INFRINGE ANY PATENT OR OTHER PROPRIETARY RIGHT.
# By downloading this SOFTWARE, your Institution hereby indemnifies OICR against any loss, claim, damage or liability, of whatsoever kind or
# nature, which may arise from your Institution's respective use, handling or storage of the SOFTWARE.
# If publications result from research using this SOFTWARE, we ask that the Ontario Institute for Cancer Research be acknowledged and/or
# credit be given to OICR scientists, as scientifically appropriate.

### FUNCTION TO DRAW SPECIAL CASE 100 #############################################################
draw.100 <- function(
	a1,
	a2,
	a3,
	a4,
	a5,
	a6,
	a7,
	category = rep("", 3),
	reverse = FALSE,
	cat.default.pos = "outer",
	lwd = rep(2, 3),
	lty = rep("solid", 3),
	col = rep("black", 3),
	label.col = rep("black", 7),
	cex = rep(1, 7),
	fontface = rep("plain", 7),
	fontfamily = rep("serif", 7),
	cat.pos = c(-40, 40, 180),
	cat.dist = c(0.05, 0.05, 0.025),
	cat.col = rep("black", 3),
	cat.cex = rep(1, 3),
	cat.fontface = rep("plain", 3),
	cat.fontfamily = rep("serif", 3),
	cat.just = list(c(0.5, 1), c(0.5, 1), c(0.5, 0)),
	cat.prompts = FALSE,
	fill = NULL,
	alpha = rep(0.5, 3),
	...
	) {

	for (i in 1:3) {
		tmp <- VennDiagram::rotate.sp(c(a1, a2, a3, a4, a5, a6, a7), i, reverse);
		if (0 == tmp$areas[5]) { break; }
		}

	a1 <- tmp$areas[1];
	a2 <- tmp$areas[2];
	a3 <- tmp$areas[3];
	a4 <- tmp$areas[4];
	a5 <- tmp$areas[5];
	a6 <- tmp$areas[6];
	a7 <- tmp$areas[7];

	# 3-vector rotations
	fill <- fill[tmp$o3];
	cat.col <- cat.col[tmp$o3];
	category <- category[tmp$o3];
	lwd <- lwd[tmp$o3];
	lty <- lty[tmp$o3];
	col <- col[tmp$o3];
	alpha <- alpha[tmp$o3];
	cat.dist <- cat.dist[tmp$o3];
	cat.cex <- cat.cex[tmp$o3];
	cat.fontface <- cat.fontface[tmp$o3];
	cat.fontfamily <- cat.fontfamily[tmp$o3];
	cat.just <- cat.just[tmp$o3];

	# 7-vector rotations
	label.col <- label.col[tmp$o7];
	cex <- cex[tmp$o7];
	fontface <- fontface[tmp$o7];
	fontfamily <- fontfamily[tmp$o7];

	x.centre.1 <- 0.31;
	y.centre.1 <- 0.66;
	r1 <- 0.216;
	x.centre.2 <- 0.68;
	y.centre.2 <- 0.66;
	r2 <- 0.216;
	x.centre.3 <- 0.5;
	y.centre.3 <- 0.333;
	r3 <- 0.216;

	a1.x.pos <- 0.31;
	a1.y.pos <- 0.66;
	a2.x.pos <- 0.495;
	a2.y.pos <- 0.66;
	a3.x.pos <- 0.68;
	a3.y.pos <- 0.66;
	a4.x.pos <- 0.41;
	a4.y.pos <- 0.5;
	a6.x.pos <- 0.59;
	a6.y.pos <- 0.5;
	a7.x.pos <- 0.5;
	a7.y.pos <- 0.335;

	return(
		VennDiagram::draw.sp.case(
			area.list = c(a1, a2, a3, a4, 0, a6, a7),
			enabled.areas = c(1, 2, 3, 4, 6, 7),
			area.x = c(a1.x.pos, a2.x.pos, a3.x.pos, a4.x.pos, 0, a6.x.pos, a7.x.pos),
			area.y = c(a1.y.pos, a2.y.pos, a3.y.pos, a4.y.pos, 0, a6.y.pos, a7.y.pos),
			attach.label.to = c(1, 3, 7),
			x.centres = c(x.centre.1, x.centre.2, x.centre.3),
			y.centres = c(y.centre.1, y.centre.2, y.centre.3),
			a.list = c(r1, r2, r3),
			b.list = c(r1, r2, r3),
			straight.reverse = FALSE,
			category = category,
			cat.default.pos = cat.default.pos,
			lwd = lwd,
			lty = lty,
			col = col,
			label.col = label.col,
			cex = cex,
			fontface = fontface,
			fontfamily = fontfamily,
			cat.pos = cat.pos,
			cat.dist = cat.dist,
			cat.col = cat.col,
			cat.cex = cat.cex,
			cat.fontface = cat.fontface,
			cat.fontfamily = cat.fontfamily,
			cat.just = cat.just,
			fill = fill,
			alpha = alpha,
			...
			)
		);
	}
