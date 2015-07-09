\name{draw.sp.case.scaled}
\alias{draw.sp.case.scaled}
\title{Draw a special Venn Diagram with Three Sets. These are the scaled cases}
\description{Special case of draw.triple.venn. Internal use only.}
\value{See draw.triple.venn}
\author{Zhiyuan Wang}
\examples{
venn.plot <- draw.triple.venn(
	area1 = 2,
	area2 = 1,
	area3 = 3,
	n12 = 1,
	n23 = 1,
	n13 = 2,
	n123 = 1,
	category = c('A', 'B', 'C'),
	fill = c('red', 'blue', 'green'),
	cat.col = c('red', 'blue', 'green'),
	cex = c(1/2,2/2,3/2,4/2,5/2,6/2,7/2),
	cat.cex = c(1,2,3),
	euler = TRUE,
	scaled = FALSE
	);
dev.off();
}
\keyword{ internal }
