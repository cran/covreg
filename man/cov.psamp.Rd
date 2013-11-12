\name{cov.psamp}
\alias{cov.psamp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Posterior samples of the covariance matrices from the covariance regression model
}
\description{
Calculates the posterior samples of the covariance matrices based on the posterior samples of the parameters and the explanatory variables in the covariance regression model.
}
\usage{
cov.psamp(fit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fit}{
the returned object from covreg.mcmc
}
}

\value{
MCMC samples of the covariance matrices given the explanatory variables specified in the model.
}

\author{
Xiaoyue Niu and Peter Hoff
}
