\name{mn}
\alias{mn}
\title{mn}

\description{
An accessor function. Retrieves the component means of a model object.
}

\usage{
mn(model, transformed = F)
}

\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}

  \item{transformed}{
A Boolean indicating whether to return the mean values on the transformed scale (\code{TRUE}) or the original scale (\code{FALSE} default). The transformed means are estimates of the Gaussian component means. The original scale means are Monte Carlo estimates of the mean of the distribution of the inverse Box-Cox function applied to the estimated Gaussian component distribution.
}
}

\value{
  \item{cases}{A vector (or scalar) of numeric values for the mean of each case component in the model.
}
  \item{controls}{A vector (or scalar) of numeric values for the mean of each control component in the model.
}
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}

\seealso{
\code{\link{lambda}} 
\code{\link{stdev}} 
\code{\link{prop}} 
\code{\link{maxll}} 
\code{\link{type}} 
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95)
model=bimixt.model(case=case,control=control, type="4c")
mn(model)
}
