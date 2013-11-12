\name{covreg.mcmc}
\alias{covreg.mcmc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bayesian estimation of the covariance regressioin model
}
\description{
covreg.mcmc is used to estimate the parameters in the covariance regression model providing Bayesian estimates.
}
\usage{
covreg.mcmc(fmean, fcov, data = NULL, R = 1, niter = 10000, 
nthin = 10, nsave = niter/nthin, verb = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fmean}{
an object of class "formula", model for the mean regression.
}
  \item{fcov}{
an object of class "formula", model for the covariance regression. Can be different from the mean model.
}
  \item{data}{
data frame containing variables in the model.
}
  \item{R}{
a positive integer, rank of the model.
}
  \item{niter}{
number of MCMC iterations.
}
  \item{nthin}{
number of thinning.
}
  \item{nsave}{
number of output iterations, calualted as niter/nthin.
}
  \item{verb}{
print progress of MCMC(TRUE/FALSE).
}
}

\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{B1.psamp}{an array containing the MCMC samples of the mean regression coefficients}
\item{B2.psamp}{an array containing the MCMC samples of the covariance regression coefficients}
\item{A.psamp}{an array containing the MCMC samples of the baseline covariance matrix}
\item{matrix.mean}{the design matrix of the mean regression}
\item{matrix.cov}{the design matrix of the covariance regression}
%% ...
}

\author{
Xiaoyue Niu and Peter Hoff
}

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