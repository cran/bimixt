\name{rmix}
\alias{rmix}
\title{rmix
}
\description{
Creates a random sample from a normal mixture distribution with two components.}
\usage{
rmix(n, mu1, s1, mu2, s2, p1)
}
\arguments{
  \item{n}{
size of random sample}
  \item{mu1}{
mean of first component}
  \item{s1}{
standard deviation of first component}
  \item{mu2}{
mean of second component}
  \item{s2}{
standard deviation of second component}
  \item{p1}{
proportion of values in the first component}
}

\value{
A vector of n numeric values from a sample mixture distribution.
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}


\examples{
rmix(30,5,1,10,1.2,.95) }