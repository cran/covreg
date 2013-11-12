\name{rmn}
\alias{rmn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sample from matrix normal distribution
}
\description{
Generate a random sample from the matrix normal distribution
}
\usage{
rmn(M = 0, Srow, Scol)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M}{
    a matrix, mean of the matrix normal distribution.     
}
  \item{Srow}{
    a positive definite matrix, row covariance matrix of the matrix normal distribution.
}
  \item{Scol}{
    a positive definite matrix, column covariance matrix of the matrix normal distribution
}
}

\value{
Return a matrix that comes from a matrix normal distribution with mean M, row covariance Srow, and column covariance Scol.
}

\author{
Xiaoyue Niu and Peter Hoff
}

% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
