\name{calculate.overlap}
\alias{calculate.overlap}
\title{Calculate Overlap}
\description{Determine the groupings of values as they would be presented in the venn diagram.}
\usage{
calculate.overlap(x)
}
\arguments{
  \item{x}{A list of vectors (e.g., integers, chars), with each component corresponding 
  to a separate circle in the Venn diagram}
  }
\details{
This function mostly complements the venn.diagram() function for the case where users
want to know what values are grouped into the particular areas of the venn diagram.
}
\value{
Returns a list of lists which contain the values assigned to each of the areas of a venn diagram.
}
\author{Christopher Lalansingh}
\examples{
# A simple single-set diagram
cardiome <- letters[1:10]
superset <- letters[8:24]
overlap <- calculate.overlap(
	x = list(
		"Cardiome" = cardiome,
		"SuperSet" = superset
		)
	);
}
\keyword{hplot}
