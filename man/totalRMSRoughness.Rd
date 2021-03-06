% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFMImageAnalyser.R
\name{totalRMSRoughness}
\alias{totalRMSRoughness}
\title{Calculate the total Root Mean Square Roughness (Rrms total)}
\usage{
totalRMSRoughness(AFMImage)
}
\arguments{
\item{AFMImage}{an \code{\link{AFMImage}} from Atomic Force Microscopy}
}
\value{
a numeric as the square root of the variance of heights
}
\description{
\code{totalRMSRoughness} returns the total RMS roughness calculated from the variance of heights
}
\examples{
\dontrun{
library(AFM)

data(AFMImageOfAluminiumInterface)
totalRMSRoughness<-totalRMSRoughness(AFMImageOfAluminiumInterface)
print(totalRMSRoughness)
}

}
\author{
M.Beauvais
}
