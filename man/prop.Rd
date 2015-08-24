\name{prop}
\alias{prop}
\title{prop
}
\description{
An accessor function. Retrieves the case component proportions and control component proportions of a model object.}
\usage{
prop(model)
}
\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
}

\value{
  \item{cases}{A vector (or scalar) of numeric values for the proportion of cases in each case component of the model.
}
  \item{controls}{A vector (or scalar) of numeric values for the proportion of controls in each control component of the model.
}
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}

\seealso{
\code{\link{lambda}} 
\code{\link{mn}} 
\code{\link{stdev}} 
\code{\link{maxll}} 
\code{\link{type}}
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95)
model=bimixt.model(case=case,control=control, type="4c")
prop(model)}
