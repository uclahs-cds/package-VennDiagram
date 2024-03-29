\name{make.truth.table}
\alias{make.truth.table}
\title{Make a truth table}
\usage{
make.truth.table(x)
}
\arguments{
\item{x}{A short vector.}
}
\value{
A data frame with \code{length(x)} logical vector columns and
\code{2 ^ length(x)} rows.
}
\description{
Makes a truth table of the inputs.
}
\examples{
\dontrun{make.truth.table(c(a = 1, b = 2, c = 3, d = 4))}
}
\author{
Richard Cotton
}
\seealso{
\code{\link[base]{expand.grid}}
}

