\name{ROCauc}
\alias{ROCauc}
\title{
ROCauc
}
\description{
Finds the area under the ROC curve.
}
\usage{
ROCauc(model, direction = "auto")
}

\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
  \item{direction}{
same as \code{\link[pROC]{roc}}: the direction in which to make the comparison. "auto" (default): automatically define in which group the median is higher and take the direction accordingly. ">": if the values for the control group are higher than the values of the case group (controls > t >= cases). "<": if the values for the control group are lower than the values of the case group (controls < t <= cases).  
}
}

\value{
Returns the area under the curve (AUC) for the fitted and empirical receiver operator characteristic (ROC) curves. The empirical AUC value is calculated using the pROC package.
}

\references{
Xavier Robin, Natacha Turck, Alexandre Hainard, Natalia Tiberti, Fr?d?rique Lisacek, Jean-Charles Sanchez and Markus M?ller (2011). "pROC: an open-source package for R and S+ to analyze and compare ROC curves". BMC Bioinformatics, 12, p. 77. DOI: 10.1186/1471-2105-12-77
}
\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
}

\seealso{
\code{\link[pROC]{auc}} 
\code{\link[bimixt]{ROCpauc}} 
\code{\link[bimixt]{ROCcoords}} 
\code{\link[bimixt]{ROCplot}} 
}
\examples{
cases=rmix(50,10,1.2,20,1.3,.7)
controls=rmix(50,9,1.1,17,1.3,.95)
model=bimixt.model(cases,controls,"4c")
ROCauc(model)
}
