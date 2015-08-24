\name{lr.test}
\alias{lr.test}
\title{
lr.test
}
\description{
Computes the likelihood ratio test to compare two bimixt models.
}
\usage{
lr.test(model1, model2)
}
\arguments{
  \item{model1}{
an object of type model from \code{\link{bimixt.model}}. 
}
  \item{model2}{
an object of type model from \code{\link{bimixt.model}}
}
}
\details{
The model fits for \code{model1} and \code{model2} will be compared using the likelihood ratio test. Models must have been fit on the same data sets.
}
\value{
Returns a p-value indicating the significance of the likelihood ratio test.
}

\author{Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}

\seealso{
\code{\link{ROCauc}} 
\code{\link{ROCpauc}} 
\code{\link{ROCplot}} 
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95) 
model1=bimixt.model(case=case,control=control, type="4c") 
model2=bimixt.model(case=case,control=control, type="binorm") 
lr.test(model1, model2)
 }