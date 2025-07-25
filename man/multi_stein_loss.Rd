% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loss_functions.R
\name{multi_stein_loss}
\alias{multi_stein_loss}
\title{Calculate multiway Stein's loss from square root matrices.}
\usage{
multi_stein_loss(B, Psi, b, psi)
}
\arguments{
\item{B}{A list of lower triangular matrices. These are the 'estimates' of
the lower-triangular Cholesky square roots of the component covariance
matrices.}

\item{Psi}{A list of lower triangular matrices. These are the 'true'
lower-triangular Cholesky square roots of the component covariance
matrices.}

\item{b}{A numeric. This is an 'estimate' of the total variation parameter,
the 'standard devation' version of it.}

\item{psi}{A numeric. This is the 'true' total variation parameter, the
'standard devation' version of it.}
}
\value{
A numeric, the multiway Stein's loss between the 'truth' and the
  'estimates'.
}
\description{
Given a list of estimates of the lower-triangular Cholesky square roots of
component covariance matrices, a list of true lower-triangular Cholesky
square roots of component covariance matrices, an estimate of the total
variation, and the true total variation, \code{multi_stein_loss} will
calculate multiway Stein's loss between the estimates and the truth.
}
\details{
Multiway Stein's loss is a generalization of Stein's loss. More details on
multiway Stein's loss and the Bayes rules under it can be found in
Gerard and Hoff (2015).

The function \code{multi_stien_loss_cov} also calculates multiway Stein's
loss, but uses the component covariance matrices (not the Cholesky roots) as
input.
}
\references{
\itemize{
  \item{Gerard, D., & Hoff, P. (2015). Equivariant minimax dominators of the MLE in the array normal model. \emph{Journal of Multivariate Analysis}, 137, 32-49. \doi{10.1016/j.jmva.2015.01.020}}
}
}
\seealso{
\code{\link{multi_stein_loss_cov}}, \code{\link{get_equi_bayes}}.
}
\author{
David Gerard.
}
\keyword{equivariance}
\keyword{loss}
