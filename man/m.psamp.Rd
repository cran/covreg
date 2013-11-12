\name{m.psamp}
\alias{m.psamp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Posterior samples of the mean vectors from the covariance regression model
}
\description{
Calculates the posterior samples of the mean vectors based on the posterior samples of the parameters and the explanatory variables in the covariance regression model.
}
\usage{
m.psamp(fit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fit}{
the returned object from covreg.mcmc
}
}
\value{
MCMC samples of the mean vectors given the explanatory variables specified in the model. 
}

\author{
Xiaoyue Niu and Peter Hoff
}

