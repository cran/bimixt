\name{type}
\alias{type}
\title{
type}
\description{
An accessor function. Retrieves the model type of a model object.}
\usage{
type(model)
}
\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
}

\value{
 Returns the type of the model, either "4c", "2cu", "2cc", or "binorm".
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}

\seealso{

\code{\link{lambda}} 
\code{\link{mn}} 
\code{\link{stdev}} 
\code{\link{prop}} 
\code{\link{maxll}} 

}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95) 
model=bimixt.model(case=case,control=control, type="2cu") 
type(model)
 }
