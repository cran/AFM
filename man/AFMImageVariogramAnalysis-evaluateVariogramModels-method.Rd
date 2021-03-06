% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFMVariogramAnalyser.R
\docType{methods}
\name{evaluateVariogramModels}
\alias{evaluateVariogramModels}
\alias{evaluateVariogramModels,AFMImageVariogramAnalysis-method}
\title{evaluateVariogramModels method to evaluate the basic variogram models}
\usage{
evaluateVariogramModels(AFMImageVariogramAnalysis, AFMImage)

\S4method{evaluateVariogramModels}{AFMImageVariogramAnalysis}(AFMImageVariogramAnalysis, AFMImage)
}
\arguments{
\item{AFMImageVariogramAnalysis}{an object}

\item{AFMImage}{an \code{\link{AFMImage}}}
}
\description{
evaluateVariogramModels method to evaluate the basic variogram models available in the \code{\link{gstat}} package
A \code{\link{AFMImageVariogramAnalysis}} method to handle the variogram analysis of an \code{\link{AFMImage}}.
The variogram models used can be seen with the show.vgms() function from the \code{\link{gstat}} package.
}
\examples{
\dontrun{
library(AFM)

data("AFMImageOfRegularPeaks")
# take an extract of the image to fasten the calculation      
AFMImage<-extractAFMImage(AFMImageOfRegularPeaks, 40, 40, 32)
# e.g. AFMImage@fullfilename<-"/users/ubuntu/AFMImageOfRegularPeaks-extract.txt"
AFMImage@fullfilename<-paste(tempdir(), "AFMImageOfRegularPeaks-extract.txt", sep="/")
 
AFMImageAnalyser<-AFMImageAnalyser(AFMImage)
 
 # Variogram analysis 
sampleFitPercentage<-3.43/100
variogramAnalysis<-AFMImageVariogramAnalysis(sampleFitPercentage)
variogramAnalysis@omnidirectionalVariogram<- 
              AFM::calculateOmnidirectionalVariogram(AFMImage=AFMImage,
                                                     AFMImageVariogramAnalysis=variogramAnalysis)
variogramAnalysis@directionalVariograms<- 
              AFM::calculateDirectionalVariograms(AFMImage=AFMImage,
                                                 AFMImageVariogramAnalysis=variogramAnalysis)
 
# manage model evaluations
AFMImageVariogram<-variogramAnalysis@omnidirectionalVariogram
class(AFMImageVariogram)=c("gstatVariogram","data.frame")
variogramAnalysis<-evaluateVariogramModels(variogramAnalysis, AFMImage)

mergedDT<-getDTModelEvaluation(variogramAnalysis)
mergedDT
sillRangeDT<-getDTModelSillRange(variogramAnalysis)
sillRangeDT
}

}
