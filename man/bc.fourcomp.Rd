\name{bc.fourcomp}
\alias{bc.fourcomp}

\title{
bc.fourcomp
}
\description{
Implementation of four component model. The four component model estimates an upper and lower component for the cases and an upper and lower component for the controls.
}
\usage{
bc.fourcomp(x.cases, x.controls, lambda.bounds = c(-5, 5), 

start.vals.cases=NULL, start.vals.controls=NULL)
}

\arguments{
  \item{x.cases}{
a numeric vector of case values
}
  \item{x.controls}{
a numeric vector of control values
}
  \item{lambda.bounds}{numeric vector of bounds: \code{c(upper bound, lower bound)}. Specifies the range for \code{\link{optim}} to search for the optimization of lambda. Default: \code{c(-5,5)}. 
}
  \item{start.vals.cases}{
starting values for the EM algorithm for the cases. If \code{NA}, the starting values are estimated from the data.
}
  \item{start.vals.controls}{
starting values for the EM algorithm for the controls. If \code{NA}, the starting values are estimated from the data.
}
}

\value{
\item{lambda}{ Box-Cox transformation parameter }
\item{type}{ model type ( "4c")}
\item{mu.cases}{ means of the Box-Cox transformed case components}
\item{sig.cases}{ standard deviations of the Box-Cox transformed case components}
\item{pi.cases}{ proportion of cases in each case component}
\item{max.loglike.cases}{ the maximum log likelihood value for the fit of the cases }
\item{mu.controls}{ means of the Box-Cox transformed control components}
\item{sig.controls}{ standard deviations of the Box-Cox transformed control components}
\item{pi.controls}{ proportion of controls in each control component}
\item{max.loglike.controls}{ the maximum log likelihood value for the fit of the controls}
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
\code{\link{bc.twocomp}} 
\code{\link{em.twocomp.m1}} 
\code{\link{em.twocomp.m2}} 
\code{\link{em.twocomp.m3}}
}
