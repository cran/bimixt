\name{boxcox}
\alias{boxcox}
\title{boxcox
}
\description{
Implementation of the Box-Cox normalization transformation method. Called internally in \code{bc.twocomp} and \code{bc.fourcomp}.
}
\usage{
boxcox(x, lambda)
}
\arguments{
  \item{x}{
    a numeric vector or scalar
    }
  \item{lambda}{
Box-Cox transformation variable
}
}

\value{
A vector or scalar of the transformed values of x.
}
\references{
Box, George EP, and David R. Cox. "An analysis of transformations." Journal of the Royal Statistical Society. Series B (Methodological) (1964): 211-252.
}
\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{boxcox.inv}}
\code{\link{boxcox.deriv}}
\code{\link{boxcox.inv.density}}
}
