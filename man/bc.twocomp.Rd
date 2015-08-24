\name{bc.twocomp}
\alias{bc.twocomp}
\title{bc.twocomp
}
\description{
Implementation of two component models. In the two component unconstrained model, the components of the control and case mixtures are the same; however the mixture probabilities may differ for cases and controls.  In the two component constrained model, all controls are distributed according to one of the two components while cases follow a mixture distribution of the two components.
}
\usage{
bc.twocomp(x.cases, x.controls, constrained = T, lambda.bounds = c(-5, 5),

control.comp = 1, start.vals=NULL)
}

\arguments{
  \item{x.cases}{
a numeric vector of case values
}
  \item{x.controls}{
a numeric vector of control values
}
  \item{constrained}{
Boolean indicating whether the two component constrained model should be used (default \code{T}) or the two component unconstrained model should be used (\code{F})
}
  \item{lambda.bounds}{
numeric vector of bounds: \code{c(upper bound, lower bound)}. Specifies the range for \code{\link{optim}} to search for the optimization of lambda. Default: \code{c(-5,5)}. 
}
  \item{control.comp}{
indicator of which component contains the controls (1 or 2)
}
  \item{start.vals}{
starting values for the EM algorithm. If \code{NA}, the starting values are estimated from the data.
}
}

\value{
\item{lambda}{Box-Cox transformation parameter}
\item{type}{ model type ( "2cc" or "2cu")}
\item{mu.cases}{ means of the Box-Cox transformed case components}
\item{sig.cases}{ standard deviations of the Box-Cox transformed case components}
\item{pi.cases}{ proportion of cases in each case component}
\item{mu.controls}{ means of the Box-Cox transformed control components}
\item{sig.controls}{ standard deviations of the Box-Cox transformed control components}
\item{pi.controls}{ proportion of controls in each control component (always equal to 1 for 2cc since all controls are forced into one component)}
\item{max.loglike}{ the maximum log likelihood value for the model}
\item{mu.cases.unt}{ an estimate of the untransformed means of the case components. Based on Monte Carlo simulations. Values will differ by computer seed.}
\item{sig.cases.unt}{ an estimate of the untransformed standard deviations of the case components. Based on Monte Carlo simulations. Values will differ by computer seed.}
\item{mu.controls.unt}{ an estimate of the untransformed means of the control components. Based on Monte Carlo simulations. Values will differ by computer seed.}
\item{sig.controls.unt}{ an estimate of the untransformed standard deviations of the control components. Based on Monte Carlo simulations. Values will differ by computer seed.}
\item{case}{ original case values}
\item{control}{ original control values}
\item{time}{ running time for the model fit}

}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}

\seealso{
\code{\link{bc.binorm}} 
\code{\link{bc.fourcomp}} 
\code{\link{em.twocomp.m1}} 
\code{\link{em.twocomp.m2}} 
\code{\link{em.twocomp.m3}}
}