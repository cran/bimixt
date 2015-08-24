\name{bimixt-package}
\alias{bimixt-package}
\alias{bimixt}
\docType{package}
\title{bimixt}

\description{
The bimixt package contains tools for estimating non-Gaussian mixture models of case-control data. The four types of models supported are binormal, two component constrained, two component unconstrained, and four component.  The most general model is the four component model, under which both cases and controls are distributed according to a mixture of two unimodal distributions.  In the four component model, the two component distributions of the control mixture may be distinct from the two components of the case mixture distribution.  In the two component unconstrained model, the components of the control and case mixtures are the same; however the mixture probabilities may differ for cases and controls.  In the two component constrained model, all controls are distributed according to one of the two components while cases follow a mixture distribution of the two components.  In the binormal model, cases and controls are distributed according to distinct unimodal distributions.  These models assume that Box-Cox transformed case and control data with a common lambda parameter are distributed according to Gaussian mixture distributions.   Model parameters are estimated using the expectation-maximization (EM) algorithm.  Likelihood ratio test comparison of nested models can be performed using the lr.test function. AUC and PAUC values can be computed for the model-based and empirical ROC curves using the auc and pauc functions, respectively. The model-based and empirical ROC curves can be graphed using the roc.plot function. Finally, the model-based density estimates can be visualized by plotting a model object created with the bimixt.model function. 
}

\details{
\tabular{ll}{
Package: \tab bimixt\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-06-21\cr
License: \tab GPL (>=3)\cr
LazyLoad: \tab yes\cr
}
}

\author{Michelle Winerip, Garrick Wallstrom, Joshua LaBaer
Maintainer: Michelle Winerip <mwinerip@asu.edu>}

\references{
Box, George EP, and David R. Cox. "An analysis of transformations." Journal of the Royal Statistical Society. Series B (Methodological) (1964): 211-252. 

Dempster, Arthur P., Nan M. Laird, and Donald B. Rubin. "Maximum likelihood from incomplete data via the EM algorithm." Journal of the royal statistical society. Series B (methodological) (1977): 1-38. 

Xavier Robin, Natacha Turck, Alexandre Hainard, et al. (2011) "pROC: an open-source package for R and S+ to analyze and compare ROC curves". BMC Bioinformatics, 7, 77. DOI: 10.1186/1471-2105-12-77.}

\keyword{ package }
\seealso{
\code{\link{pROC}}
}

\examples{
case=rmix(50,10,1.2,15,1,.7)
control=rmix(50,10,1.2,15,1,.95)
model1=bimixt.model(case=case,control=control, type="4c")
model2=bimixt.model(case=case, control=control, type="2cu") 
model3=bimixt.model(case=case, control=control, type="2cc")
model4=bimixt.model(case=case, control=control, type="binorm")
par(mfrow=c(2,2))
plot(model1)
plot(model2)
plot(model3)
plot(model4)
}
