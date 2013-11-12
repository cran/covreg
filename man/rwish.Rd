\name{rwish}
\alias{rwish}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sample from the Wishart distribution
}
\description{
Generate a random sample from the Wishart distribution
}
\usage{
rwish(S0, nu)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{S0}{
a positive definite matrix
}
  \item{nu}{
a positive integer
}
}
\details{
Return a ramdom sample from the Wishart distribution with  mean nu*S0.
}
\value{
a positive definite matrix
}
\author{
Xiaoyue Niu and Peter Hoff
}
