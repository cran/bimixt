\name{ROCpauc}
\alias{ROCpauc}
\title{
ROCpauc}
\description{
Finds the partial area under the ROC curve.}
\usage{
ROCpauc(model, spec.lower = 0.95, spec.upper = 1, direction = "auto")
}
\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
  \item{spec.lower}{
a value between 0 and 1 that serves as the lower bound of the specificity to be used in the PAUC calculation}
  \item{spec.upper}{
a value between 0 and 1 that serves as the upper bound of the specificity to be used in the PAUC calculation}
  \item{direction}{
same as \code{\link[pROC]{roc}}: the direction in which to make the comparison. "auto" (default): automatically define in which group the median is higher and take the direction accordingly. ">": if the predictor values for the control group are higher than the values of the case group (controls > t >= cases). "<": if the predictor values for the control group are lower or equal than the values of the case group (controls < t <= cases). 
}
}

\value{
Returns the partial area under the curve (pAUC) for the fitted and empirical receiver operator characteristic (ROC) curves between spec.lower and spec.upper. The empirical pAUC value is calculated using the pROC package.
}
\references{
Xavier Robin, Natacha Turck, Alexandre Hainard, et al. (2011) "pROC: an open-source package for R and S+ to analyze and compare ROC curves". BMC Bioinformatics, 7, 77. DOI: 10.1186/1471-2105-12-77.}
\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}


\seealso{
\code{\link[pROC]{auc}} 
\code{\link[bimixt]{ROCauc}}
\code{\link[bimixt]{ROCcoords}}
\code{\link[bimixt]{ROCplot}}  }

\examples{
cases=rmix(50,10,1.2,20,1.3,.7)
controls=rmix(50,9,1.1,17,1.3,.95)
model= bimixt.model(cases,controls,"4c") 
ROCpauc(model, spec.lower = .85, spec.upper = 1)
}