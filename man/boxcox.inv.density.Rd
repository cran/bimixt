\name{boxcox.inv.density}
\alias{boxcox.inv.density}
\title{boxcox.inv.density
}
\description{
A variable transformation that gives the probability density function (PDF) of the inverse Box-Cox transformation of a normal random variable. Called internally in \code{plot.model}.
}
\usage{
boxcox.inv.density(y, lambda, mu, sig)
}

\arguments{
  \item{y}{
    a numeric vector or scalar
    }
  \item{lambda}{
the transformation parameter
}
  \item{mu}{
the mean of the transformed component
}
  \item{sig}{
the standard deviation of the transformed component
}
}

\value{
A vector or scalar of the untransformed x values.
}
\references{
Box, George EP, and David R. Cox. "An analysis of transformations." Journal of the Royal Statistical Society. Series B (Methodological) (1964): 211-252.
}
\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{boxcox}}
\code{\link{boxcox.inv}}
\code{\link{boxcox.deriv}}
}

