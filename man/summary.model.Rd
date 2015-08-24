\name{summary.model}
\alias{summary.model}
\title{
summary.model}
\description{
Summary method for a mixture model object. }


\usage{
\method{summary}{model}(object, \dots)
}

 
\arguments{
  \item{object}{
an object of type model from \code{\link{bimixt.model}}
}
 \item{\dots}{
Not used.
}
}

\value{
Gives a table with the estimated means and standard deviations of the Gaussian components (following the Box-Cox transformation), the estimated means and standard deviations of the untransformed components (before transforming for normality), and the estimated case and control proportions for each component in the mixture model.
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}

\seealso{
\code{\link{plot.model}} 
\code{\link{print.model}}
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95) 
model=bimixt.model(case=case,control=control, type="4c") 
summary(model)
}