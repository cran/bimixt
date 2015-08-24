\name{ROCplot}
\alias{ROCplot}
\title{
ROCplot}
\description{
Creates a ROC plot.}
\usage{
ROCplot(model, direction = "auto")
}
\arguments{
  \item{model}{
an object of type model from \code{\link{bimixt.model}}
}
  \item{direction}{
same as \code{\link[pROC]{roc}}: same as pROC: the direction in which to make the comparison. "auto" (default): automatically define in which group the median is higher and take the direction accordingly. ">": if the values for the control group are higher than the values of the case group (controls > t >= cases). "<": if the values for the control group are lower than the values of the case group (controls < t <= cases). 
}
}

\value{
Plots empirical and model-based estimates of the receiver operator characteristic (ROC) curve. The empirical plot comes from the pROC package.
}

\references{
Xavier Robin, Natacha Turck, Alexandre Hainard, et al. (2011) "pROC: an open-source package for R and S+ to analyze and compare ROC curves". BMC Bioinformatics, 7, 77. DOI: 10.1186/1471-2105-12-77.}

\author{
Michelle Winerip, Garrick Wallstrom, Joshua LaBaer}

\seealso{
\code{\link[pROC]{auc}} 
\code{\link[bimixt]{ROCcoords}} 
\code{\link[bimixt]{ROCauc}} 
\code{\link[bimixt]{ROCpauc}} 
    }
    
\examples{
cases=rmix(50,10,1.2,20,1.3,.7)
controls=rmix(50,9,1.1,17,1.3,.95)
model=bimixt.model(cases,controls,"4c")
ROCplot(model)
}
