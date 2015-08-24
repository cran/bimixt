\name{em.twocomp.m2}
\alias{em.twocomp.m2}

\title{
em.twocomp.m2
}
\description{
Expectation maximization (EM) algorithm for estimating two-component Gaussian mixture models.  This is used as an internal method and is called twice from \code{bc.fourcomp}: once for the cases and once for the controls (four component model). 
}
\usage{
em.twocomp.m2(x.all, max.iters = 1000, errtol = 1e-09, start.vals=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x.all}{
vector of data
}
  \item{max.iters}{
the maximum number of iterations to run
}
  \item{errtol}{
Error tolerance level. Approximates convergence of the maximum log likelihood value.
}
  \item{start.vals}{
starting values for the EM algorithm. If \code{NA}, the starting values are estimated from the data.
}
}

\value{
\item{max.loglike}{ the maximum log likelihood value for the algorithm}
\item{mu}{ estimated means for each component }
\item{sig}{ estimated standard deviation for each component}
\item{pi}{ estimated proportion of data in each component}
\item{n.iters}{ the number of iterations the algorithm took to converge}

}
\references{
Dempster, Arthur P., Nan M. Laird, and Donald B. Rubin. "Maximum likelihood from incomplete data via the EM algorithm." Journal of the royal statistical society. Series B (methodological) (1977): 1-38.
}
\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{bc.binorm}} 
\code{\link{bc.twocomp}} 
\code{\link{bc.fourcomp}} 
\code{\link{em.twocomp.m1}} 
\code{\link{em.twocomp.m3}}
}
