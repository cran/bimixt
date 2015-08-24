\name{em.twocomp.m3}
\alias{em.twocomp.m3}
\title{em.twocomp.m3
}
\description{
Expectation maximization (EM) algorithm for estimating two-component Gaussian mixtures with different mixture proportions for cases and controls (two component unconstrained model). This is used as an internal method and is called from \code{bc.twocomp}.
}
\usage{
em.twocomp.m3(x.all, case.indicator, max.iters = 1000, errtol = 1e-09, 

control.comp = 1, start.vals=NULL)
}

\arguments{
  \item{x.all}{
vector of cases and controls
}
  \item{case.indicator}{
a vector of equal length to x.all with 1's in the case positions and 0's in the control positions
}
  \item{max.iters}{
the maximum number of iterations to run 
}
  \item{errtol}{
Error tolerance level. Approximates convergence of the maximum log likelihood value.
}
  \item{control.comp}{
indicator of which component contains the controls (1 or 2)
}
  \item{start.vals}{
starting values for the EM algorithm. If \code{NA}, the starting values are estimated from the data.
}
}

\value{
\item{max.loglike}{ the maximum log likelihood value for the algorithm}
\item{mu}{ estimated means for each component}
\item{sig}{ estimated standard deviations for each component}
\item{pi.cs}{ estimated proportion of cases in each component}
\item{pi.ctrl}{ estimated proportion of controls in each component}
\item{n.iters}{ the number of iterations the algorithm took to converge}
\item{control.comp}{ indicator of which component contains the controls (1 or 2)}

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
\code{\link{em.twocomp.m2}}
}
