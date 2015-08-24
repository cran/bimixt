\name{bc.binorm}
\alias{bc.binorm}

\title{
bc.binorm
}
\description{
Implementation of binormal model. The binormal model estimates a single unimodal component for the cases and a single unimodal component for the controls. 
}
\usage{
bc.binorm(case, control, lambda.bounds = c(-5, 5))
}
\arguments{
  \item{case}{
a numeric vector of case values
}
  \item{control}{
a numeric vector of control values
}
  \item{lambda.bounds}{numeric vector of bounds: \code{c(upper bound, lower bound)}. Specifies the range for \code{\link{optim}} to search for the optimization of lambda. Default: \code{c(-5,5)}. 
}
}

\value{
\item{lambda}{ Box-Cox transformation parameter }
\item{type}{ model type ("binorm")}
\item{mu.cases}{ mean of the Box-Cox transformed case component}
\item{sig.cases}{ standard deviation of the Box-Cox transformed case component } 
\item{pi.cases}{ proportion of cases in each case component (always equal to 1 for binorm since all cases are forced into one component)}
\item{mu.controls}{ mean value of the Box-Cox transformed control component}
\item{sig.controls}{ standard deviation of the Box-Cox transformed control component}
\item{pi.controls}{ proportion of controls in each control component (always equal to 1 for binorm since all controls are forced into one component)}
\item{max.loglike}{ the maximum log likelihood value for the model}
\item{case}{ original case values}
\item{control}{ original control values}
\item{mu.cases.unt}{ an estimate of the untransformed mean of the case component. Based on Monte Carlo simulations. Values will differ by computer seed.}
\item{sig.cases.unt}{ an estimate of the untransformed standard deviation of the case component. Based on Monte Carlo simulations. Values will differ by computer seed.}
\item{mu.controls.unt}{ an estimate of the untransformed mean of the control component. Based on Monte Carlo simulations. Values will differ by computer seed.}
\item{sig.controls.unt}{ an estimate of the untransformed standard deviation of the control component. Based on Monte Carlo simulations. Values will differ by computer seed.}
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}


\seealso{
\code{\link{bc.twocomp}} 
\code{\link{bc.fourcomp}} 
\code{\link{em.twocomp.m1}} 
\code{\link{em.twocomp.m2}} 
\code{\link{em.twocomp.m3}}
}
