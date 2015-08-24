\name{lambda}
\alias{lambda}
\title{lambda
}
\description{
An accessor function. Retrieves the transformation parameter, lambda, of a model object.
}
\usage{
lambda(model)
}

\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
}

\value{
 The numeric value for the Box-Cox transformation parameter, lambda.
}

\author{Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}

\seealso{
\code{\link{mn}} 
\code{\link{stdev}} 
\code{\link{prop}} 
\code{\link{maxll}} 
\code{\link{type}}
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95)
model=bimixt.model(case=case,control=control, type="4c")
lambda(model)
}