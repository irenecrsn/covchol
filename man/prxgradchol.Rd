% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prxgradl.R
\name{prxgradchol}
\alias{prxgradchol}
\alias{cholpath}
\title{Penalized likelihood estimation of Cholesky factor}
\usage{
prxgradchol(
  X,
  L = diag(ncol(X)),
  eps = 1e-06,
  alpha = 0.5,
  maxIter = 100,
  lambda = 0,
  normalize = TRUE
)

cholpath(
  X,
  lambdas = NULL,
  L = diag(ncol(X)),
  eps = 1e-06,
  maxIter = 100,
  normalize = TRUE
)
}
\arguments{
\item{X}{data from which to obtain the path}

\item{L}{initial cholesky factor}

\item{eps}{convergence threshold for the proximal gradient}

\item{alpha}{line search rate}

\item{maxIter}{the maximum number of iterations}

\item{lambda}{penalization coefficient}

\item{normalize}{logical}

\item{lambdas}{increasing sequence of lambdas}
}
\value{
a list with the output of the optimization:

* \code{N}
* \code{L} the estimated L matrix
* \code{lambda} 
* \code{diff} the value of the last relative decrease
* \code{objective} the value of the objective function
* \code{iter} number of iterations
}
\description{
Solve the following optimization problem
\deqn{\hat{L} = \arg \min_{L} 2\log(det(L)) + tr(L^{-1} \Sigma) L^{-t}} + ||L||_1,off
}
\details{
\code{cholpath} returns the path of regularized estimator on a sequence of 
\code{lambda} parameters
}
