\name{covreg-package}
\alias{covreg-package}
\docType{package}
\title{
A simultaneous regression model for the mean and covariance 
}
\description{
This package fits a simultaneous regression model for the mean vectors and covariance matrices of multivariate response variables, as described in Hoff and Niu (2012). The explanatory variables can be continuous or discrete. The current version of the package provides the Bayesian estimates.
}
\details{
This package fits a simultaneous regression model for the mean vectors and covariance matrices of multivariate response variables, as described in Hoff and Niu (2012). The explanatory variables can be continuous or discrete. The current version of the package provides the Bayesian estimates.
}
\author{
Xiaoyue Niu and Peter Hoff
}
\references{
P.D. Hoff and X. Niu. A Covariance Regression Model. Statistica Sinica, 22:729-753, 2012
}
\keyword{ package }
\examples{
## load FEV data ##
data(fev)
## specify mean and cov models ##
library(splines)
fmean=as.formula(cbind(fev,height)~bs(age,knots=11))
fcov=as.formula(cbind(fev,height)~sqrt(age)+age)
## fit model ##
fit<-covreg.mcmc(fmean,fcov,data=fev,R=2,niter=100,nthin=1)
## summarize MCMC samples ##
M.psamp=m.psamp(fit)
S.psamp=cov.psamp(fit)
}
