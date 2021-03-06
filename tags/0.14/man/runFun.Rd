\name{runFun}
\alias{runFun}
\alias{runSum}
\alias{runMin}
\alias{runMax}
\alias{runMean}
\alias{runMedian}
\alias{runCov}
\alias{runCor}
\alias{runVar}
\alias{runSD}
\alias{runMAD}
\title{ Analysis of Running/Rolling/Moving Windows }
\description{
  Various functions to analyze data over a moving window of periods.
}
\usage{
  runSum(x, n=10)
  runMin(x, n=10)
  runMax(x, n=10)
  runMean(x, n=10)
  runMedian(x, n=10, low=FALSE, high=FALSE)
  runCov(x, y, n=10, use="all.obs", sample=TRUE)
  runCor(x, y, n=10, use="all.obs", sample=TRUE)
  runVar(x, n=10, sample=TRUE)
  runSD(x, n=10, sample=TRUE)
  runMAD(x, n=10, center=runMedian(x, n), stat="median",
         constant=1.4826, low=FALSE, high=FALSE)
}
\arguments{
  \item{x}{ Object able to be coerced to a matrix. }
  \item{y}{ Object able to be coerced to a matrix. }
  \item{n}{ Number of periods to use in the window. }
  \item{sample}{ Logical, sample covariance if \code{TRUE} (denominator of \code{n-1}) }
  \item{use}{ Only \code{"all.obs"} currently implemented. }
  \item{low}{ Logical, if \code{TRUE}, compute the 'low-median'; i.e., take the
    smaller of the two middle values for even sample sizes. }
  \item{high}{ Logical, if \code{TRUE}, compute the 'high-median'; i.e., take the
    larger of the two middle values for even sample sizes. }
  \item{center}{ The values to use as the measure of central tendency, around
    which to calculate deviations. }
  \item{stat}{ Statistic to calculate, one of 'median' or 'mean' (e.g. median
    absolute deviation or mean absolute deviation, respectively.) }
  \item{constant}{ Scale factor applied to approximate the standard deviation. }
}
%\details{
%  \code{runSum} calculates sums over a moving window.
%  \code{runMin} calculates minimums over a moving window.
%  \code{runMax} calculates maximums over a moving window.
%  \code{runMean} calculates means over a moving window (provided for convenience).
%  \code{runMedian} calculates medians over a moving window.
%  \code{runCov} calculates covariances over a moving window.
%  \code{runCor} calculates correlations over a moving window.
%  \code{runVar} calculates variances over a moving window.
%  \code{runSD} calculates standard deviations over a moving window (provided for convenience).
%  \code{runMAD} calculates median/mean absolute deviations over a moving window.
%}
\value{
  \item{runSum} returns sums over a n-period moving window.
  \item{runMin} returns minimums over a n-period moving window.
  \item{runMax} returns maximums over a n-period moving window.
  \item{runMean} returns means over a n-period moving window.
  \item{runMedian} returns medians over a n-period moving window.
  \item{runCov} returns covariances over a n-period moving window.
  \item{runCor} returns correlations over a n-period moving window.
  \item{runVar} returns variances over a n-period moving window.
  \item{runSD} returns standard deviations over a n-period moving window.
  \item{runMAD} returns median/mean absolute deviations over a n-period moving window.
}
\author{ Josh Ulrich }
%\note{
%  In \code{growth} you can specify the number of periods and type of compounding
%  to use when calculating returns of the price series via the \code{'\dots'} argument.
%}
%--\examples{
%--##---- Should be DIRECTLY executable !! ----
%--##-- ==>  Define data, use random,
%--##--	or do  help(data=index)  for the standard data sets.
%--}
\keyword{ ts }
