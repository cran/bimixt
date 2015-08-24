\name{ROCcoords}
\alias{ROCcoords}
\title{
  ROCcoords
}
\description{
  Takes in a threshold, specificity, or sensitivity value and calculates the other two values.
}
\usage{
  ROCcoords(model, direction = "auto", x, input)
}

\arguments{
  \item{model}{
    an object of type model from \code{\link{bimixt.model}}
  }
  \item{direction}{
    same as \code{\link[pROC]{roc}}: the direction in which to make the comparison. "auto" (default): automatically define in which group the median is higher and take the direction accordingly. ">": if the values for the control group are higher than the values of the case group (controls > t >= cases). "<": if the values for the control group are lower than the values of the case group (controls < t <= cases).  
  }
  \item{x}{
    The numeric value for the input. If input is "sensitivity" or "specificity" x must be between 0 and 1.
  }
  \item{input}{
    A string that defines what the input type is. Valid inputs are "sensitivity", "specificity", or "threshold". These can be shortened to "sens", "spec", "thr" or "se", "sp", "t".
  }
}

\value{
  Returns a numeric vector with the values of threshold, specificity, and sensitivity. 
}

\author{
  Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}

\seealso{
  \code{\link[pROC]{coords}} 
  \code{\link[bimixt]{ROCauc}}
  \code{\link[bimixt]{ROCpauc}} 
  \code{\link[bimixt]{ROCplot}} 
}
\examples{
  cases=rmix(50,10,1.2,20,1.3,.7)
  controls=rmix(50,9,1.1,17,1.3,.95)
  model=bimixt.model(cases,controls,"4c")
  ROCcoords(model,x=.95,input="sens")
  ROCcoords(model,x=.95,input="spec")
  ROCcoords(model,x=9,input="thr")
}
