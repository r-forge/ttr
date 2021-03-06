\name{VHF}
\alias{VHF}
\title{ Vertical Horizontal Filter }
\description{
  The Vertical Horizontal Filter (VHF) attempts to identify starting and ending trends.
  Developed by Adam White.
}
\usage{
  VHF(price, n = 28)
}
\arguments{
  \item{price}{ Object able to be coerced to a matrix, which contains either a Close price
    series, or a High-Low-Close price series. }
  \item{n}{ Number of periods to use. }
}
\details{
  The VHF is calculated by subtracting the \code{n}-period lowest low from the
  \code{n}-period highest high and dividing that result by the \code{n}-period rolling
  sum of the close price changes.
}
\value{
  A vector containing the VHF values.
}
\author{ Josh Ulrich }
\references{
  The following site(s) were used to code/document this indicator:\cr
  \url{http://www.fmlabs.com/reference/VHF.htm}\cr
  \url{http://www.equis.com/Customer/Resources/TAAZ?c=3&p=119}\cr
}
\note{
  If Close prices are given, the function calculates the max/min using only those prices
  (the default).  If HLC prices are given, the function calculates the max/min using the
  high/low prices (added for flexibility).
}
\seealso{ See \code{\link{aroon}}, \code{\link{CCI}}, \code{\link{ADX}}, \code{\link{TDI}}
          for other indicators that measure trend direction/strength. }
\examples{
  data(nasdaq)
  vhf.close <- VHF(nasdaq[,"Close"])
  vhf.hilow <- VHF(nasdaq[,c("High","Low","Close")])
}
\keyword{ ts }