\name{CVMSE}
\alias{CVMSE}
\title{Cross validation}
\usage{
CVMSE(X = X, Y = Y, K = K, intercept = T, methode = 1,
  groupe = NULL)
}
\arguments{
  \item{X}{covariates matrix (double)}

  \item{Y}{response variable}

  \item{K}{number of classes}

  \item{intercept}{(boolean) with or without an intercept}

  \item{methode}{the methode used by OLS.}

  \item{groupe}{a vector to define the groups used for
  cross-validation (to obtain a reproductible result)}
}
\description{
Cross validation
}
