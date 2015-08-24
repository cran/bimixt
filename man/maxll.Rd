\name{maxll}
\alias{maxll}


\title{
maxll
}

\description{
An accessor function. Retrieves the maximum log likelihood value of a model object.
}

\usage{
maxll(model)
}

\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
}

\value{
The numeric value for the maximum log likelihood value for the model.
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{lambda}} 
\code{\link{mn}} 
\code{\link{stdev}} 
\code{\link{prop}} 
\code{\link{type}}
}

\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95)
model=bimixt.model(case=case,control=control, type="4c")
maxll(model)
}

