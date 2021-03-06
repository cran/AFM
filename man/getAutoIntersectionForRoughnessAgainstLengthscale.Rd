% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFMPSDAnalyser.R
\name{getAutoIntersectionForRoughnessAgainstLengthscale}
\alias{getAutoIntersectionForRoughnessAgainstLengthscale}
\title{get the intersection between tangente and plateau}
\usage{
getAutoIntersectionForRoughnessAgainstLengthscale(
  AFMImageAnalyser,
  second_slope = FALSE
)
}
\arguments{
\item{AFMImageAnalyser}{an \code{\link{AFMImageAnalyser}} to get Roughness against lenghtscale calculation}

\item{second_slope}{a boolean to manage first or second slope in the roughness against lenghtscale curve}
}
\value{
a \code{\link{AFMImagePSDSlopesAnalysis}}
}
\description{
\code{\link{getAutoIntersectionForRoughnessAgainstLengthscale}} get the intersection between tangente and plateau
}
\author{
M.Beauvais
}
