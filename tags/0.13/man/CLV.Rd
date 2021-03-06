\name{CLV}
\alias{CLV}
\title{ Close Location Value }
\description{
  The Close Location Value (CLV) relates the day's close to its trading range.
}
\usage{
  CLV(HLC)
}
\arguments{
  \item{HLC}{ Object able to be coerced to a matrix, which contains High-Low-Close prices. }
}
\details{
  The CLV will fall in a range of -1 to +1.  If the CLV is +/-1, the close is at the high/low;
  if the CLV is 0, the close is directly between the high and low.
}
\value{
  A vector containg the Close Location Values of a High-Low-Close price series.
}
\author{ Josh Ulrich }
\references{
  The following site(s) were used to code/document this indicator:\cr
  \url{http://stockcharts.com/education/IndicatorAnalysis/indic_AccumDistLine.html}\cr
}
\seealso{
  See \code{\link{chaikinAD}}, which uses CLV.
}
\examples{
  data(ttrc)
  clv <- CLV(ttrc[,c("High","Low","Close")])
}
\keyword{ ts }
