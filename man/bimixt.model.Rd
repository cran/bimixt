\name{bimixt.model}
\alias{bimixt.model}
\title{
bimixt.model
}
\description{
Estimates mixture model components based on model type.
}
\usage{
bimixt.model(case, control, type = "binorm", start.vals=NULL)
}

\arguments{
  \item{case}{
a numeric vector of case values. \code{NA}'s will be omitted.
}
  \item{control}{
a numeric vector of control values. \code{NA}'s will be omitted.
}
  \item{type}{
a string specifying the mixture model to be used to fit the data. Valid types are "binorm", "2cc", "2cu", or "4c". These correspond to binormal, two component constrained, two component unconstrained, and four component models respectively. Defaults to "binorm".
}
  \item{start.vals}{
an (optional) list of starting values for the EM algorithm used in the "2cc", "2cu", and "4c" models. If not specified by the user, starting values are estimated from the data using kmeans clustering. The format of the lists are described in the details section. 
}
}

\details{
Starting values for the EM algorithm can be provided by the user. The starting values must be given as lists. Each element in the list is a named numeric vector of length 2 containing starting estimates for the model parameters. Names must match the names given below exactly (See examples section for "4c" model example).

For "2cc"  \code{start.vals} is a list of 3 named vectors:
  \tabular{ll}{
    mu \tab Starting estimates for component means\cr
    sig \tab Starting estimates for component standard deviations\cr
    pi \tab Starting estimates for component proportions. Must sum to 1.\cr
  }

  For "2cu", \code{start.vals} is a list of length 4:
    \tabular{ll}{
    mu \tab Starting estimates for component means.\cr
    sig \tab Starting estimates for component standard deviations.\cr
    pi.cs \tab Starting estimates for case component proportions. Must sum to 1.\cr
    pi.ctrl \tab Starting estimates for control component proportions. Must sum to 1.\cr
  }

    For "4c", \code{start.vals} is a list of length 6:
    \tabular{ll}{
    mu.cs \tab Starting estimates for case component means.\cr
    mu.ctrl \tab Starting estimates for control component means.\cr
    sig.cs \tab Starting estimates for case component standard deviations.\cr
    sig.ctrl \tab Starting estimates for control component standard deviations.\cr
    pi.cs \tab Starting estimates for component proportions for cases. Must sum to 1.\cr
    pi.ctrl \tab Starting estimates for component proportions for controls. Must sum to 1.\cr
  }
}

\value{
Returns an object of type model with parameters specified by bc.binorm, bc.twocomp, or bc.fourcomp.
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{plot.model}} 
\code{\link{print.model}} 
\code{\link{summary.model}}
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95) 
model1=bimixt.model(case=case, control=control, type="4c", start.vals=list(mu.cs=c(10,15), 

mu.ctrl=c(10,15),sig.cs=c(1.2,1),sig.ctrl=c(1.2,1),pi.cs=c(.7,.3),pi.ctrl=c(.95,.05))) 
model2=bimixt.model(case=case, control=control, type="2cu")  
model3=bimixt.model(case=case, control=control, type="2cc") 
model4=bimixt.model(case=case, control=control, type="binorm") 
}
