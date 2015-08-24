\name{print.model}
\alias{print.model}
\title{
print.model}
\description{
Print method for a mixture model object.}
\usage{
\method{print}{model}(x, \dots)
}
\arguments{
  \item{x}{
an object of type model from \code{\link{bimixt.model}}}
 \item{\dots}{
Not used.
}
}

\value{
Values used in fitting a mixture model object.
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{summary.model}} 
\code{\link{plot.model}}
}

\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95) 
model=bimixt.model(case=case,control=control, type="4c") 
print(model) 
}