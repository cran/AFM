% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFMPSDAnalyser.R
\name{PSD1DAgainstFrequency}
\alias{PSD1DAgainstFrequency}
\alias{PSD1DAgainstFrequency,AFMImage-method}
\title{Calculate the 1D Power Spectral Density; returns a data table of PSD 1D and PSD 2D values
against spatial frequencies.\cr As mentionned in Sidick2009, this function calculates the 
PSD against spatial frequencies in 1D from \code{\link{PSD2DAgainstFrequency}} by using
breaks in the log space to sum PSD 2D and frequency values.}
\usage{
PSD1DAgainstFrequency(AFMImage, AFMImagePSDAnalysis)

\S4method{PSD1DAgainstFrequency}{AFMImage}(AFMImage, AFMImagePSDAnalysis)
}
\arguments{
\item{AFMImage}{an \code{AFMImage} to be analysed}

\item{AFMImagePSDAnalysis}{n \code{AFMImagePSDAnalysis} to store the setup and results of PSD analysis}
}
\value{
\code{PSD1DAgainstFrequency} returns a data table of frequencies and PSD values
\itemize{
  \item freq: the considered frequency
  \item PSD: the considered PSD value
  \item type: PSD-1D
  \item fullfilename: directory and filename on the disk
}
}
\description{
Calculate the 1D Power Spectral Density; returns a data table of PSD 1D and PSD 2D values
against spatial frequencies.\cr As mentionned in Sidick2009, this function calculates the 
PSD against spatial frequencies in 1D from \code{\link{PSD2DAgainstFrequency}} by using
breaks in the log space to sum PSD 2D and frequency values.
}
\examples{
\dontrun{
library(AFM)
library(ggplot2)
library(plyr)
library(scales)
data("AFMImageOfNormallyDistributedHeights")
 newAFMImage<-AFMImageOfNormallyDistributedHeights
newAFMImage@fullfilename<-"C:/Users/one/AFMImageOfNormallyDistributedHeights.txt"
psdAnalysis<-AFMImagePSDAnalysis()
# Create a closure to update progress
psdAnalysis@updateProgress<- function(value = NULL, detail = NULL, message = NULL) {
  if (exists("progressPSD")){
   if (!is.null(message)) {
     progressPSD$set(message = message, value = 0)
   }else{
     progressPSD$set(value = value, detail = detail)
   }
  }
}
psdAnalysis@psd1d_breaks<-2^3
psdAnalysis@psd2d_truncHighLengthScale<-TRUE
psdAnalysis<-performAllPSDCalculation(AFMImagePSDAnalysis= psdAnalysis, AFMImage= newAFMImage)
datap<-psdAnalysis@psd1d
p <- ggplot(data=datap)
p <- p + geom_point(aes(freq, PSD, color=type),data=datap[datap$type \%in\% c("PSD-2D")])
p <- p + geom_line(aes(freq, PSD, color=type),data=datap[datap$type \%in\% c("PSD-1D")],size=1.1)
p <- p + scale_x_log10()
p <- p + scale_y_log10()
p <- p + ylab("PSD (nm^4)")
p <- p + xlab("Frequency (nm^-1)")
p
}
}
