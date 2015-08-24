\name{boxcox.inv}
\alias{boxcox.inv}

\title{
boxcox.inv
}
\description{
Inverse of the Box-Cox transformation. Called internally in \code{bc.twocomp} and \code{bc.fourcomp}.
}
\usage{
boxcox.inv(y, lambda)
}

\arguments{
  \item{y}{
a numeric vector or scalar
}
  \item{lambda}{
Box-Cox transformation variable. 
}
}

\value{
A vector or scalar of the untransformed values of x.
}
\references{
Box, George EP, and David R. Cox. "An analysis of transformations." Journal of the Royal Statistical Society. Series B (Methodological) (1964): 211-252.
}
\author{Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{boxcox}}
\code{\link{boxcox.deriv}}
\code{\link{boxcox.inv.density}}
}
