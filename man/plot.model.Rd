\name{plot.model}
\alias{plot.model}
\title{
plot.model}
\description{
Plot method for a mixture model object.}
\usage{
\method{plot}{model}(x, histogram = T, breaks = "Sturges", main = model$type, 

cols = c("#008ED6", "#990033"), ylab = "Density", xlab = "", \dots)
}

\arguments{
  \item{x}{
an object of type model from \code{\link{bimixt.model}}
}
  \item{histogram}{
a Boolean indicating whether to plot a histogram of the original data (default = true). Histogram is plotted using the \code{\link{hist}} function.}
  \item{breaks}{
the types of breaks to be used in \code{\link{hist}}
}
  \item{main}{
a character string to be used as the title of the plot
}
  \item{cols}{
a vector of length 2 specifying the colors of the components \code{c(color of control component, color of case component)}
}
  \item{ylab}{
y label of the plot
}
  \item{xlab}{
x label of the plot
}
 \item{\dots}{
Not used.
}
}

\value{
Plots a model object.
}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}

\seealso{
\code{\link{summary.model}} 
\code{\link{print.model}}
}
\examples{
case=rmix(50,10,1.2,15,1,.7) 
control=rmix(50,10,1.2,15,1,.95) 
model=bimixt.model(case=case,control=control, type="4c") 
plot(model)
}