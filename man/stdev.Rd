\name{stdev}
\alias{stdev}
\title{
stdev}
\description{
An accessor function. Retrieves the component standard deviations of a model object.}
\usage{
stdev(model, transformed = F)
}
\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
  \item{transformed}{
  A Boolean indicating whether to return the standard deviation values on the transformed scale (\code{TRUE}) or the original scale (\code{FALSE} default). The transformed standard deviations are estimates of the Gaussian component standard deviations. The original scale standard deviations are Monte Carlo estimates of the standard deviation of the inverse Box-Cox of the estimated Gaussian component distribution.
}
}

\value{
  \item{cases}{A vector (or scalar) of numeric values for the standard deviation of each case component in the model.
}
  \item{controls}{A vector (or scalar) of numeric values for the standard deviation of each control component in the model.
}
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}

\seealso{
\code{\link{lambda}} 
\code{\link{mn}}  
\code{\link{prop}} 
\code{\link{maxll}} 
\code{\link{type}} 
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95) 
model=bimixt.model(case=case,control=control, type="4c") 
stdev(model)
 }
