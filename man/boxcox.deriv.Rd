\name{boxcox.deriv}
\alias{boxcox.deriv}

\title{
  boxcox.deriv
}
\description{
  Derivative of the Box-Cox transformation function.
}
\usage{
  boxcox.deriv(x, lambda)
}

\arguments{
  \item{x}{
    a numeric vector or scalar
  }
  \item{lambda}{
    Box-Cox transformation variable. 
  }
}

\value{
A vector or scalar of the derivative of the Box-Cox function evaluated at x.
}
\references{
  Box, George EP, and David R. Cox. "An analysis of transformations." Journal of the Royal Statistical Society. Series B (Methodological) (1964): 211-252.
}
\author{Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{boxcox}}
\code{\link{boxcox.inv}}
\code{\link{boxcox.inv.density}}
}
