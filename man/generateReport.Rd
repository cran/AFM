% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFMReportMaker.R
\name{generateReport}
\alias{generateReport}
\title{Generate an analysis report for one AFMImage}
\usage{
generateReport(AFMImage)
}
\arguments{
\item{AFMImage}{an \code{\link{AFMImage}} to be analysed}
}
\description{
A function to analyse an \code{\link{AFMImage}} and save on disk the analysis. The analysis are saved in outputs directory located in the image directory.
All the rdata and image files in the reportDirectory directory are loaded to generate one report for one \code{\link{AFMImage}}.
}
\examples{
\dontrun{
library(AFM)

# Analyse the AFMImageOfRegularPeaks AFMImage sample from this package
  data("AFMImageOfRegularPeaks")
  AFMImage<-AFMImageOfRegularPeaks

# exportDirectory="C:/Users/my_windows_login" or exportDirectory="/home/ubuntu"
  exportDirectory=tempdir()
  AFMImage@fullfilename<-paste(exportDirectory,"AFMImageOfRegularPeaks.txt",sep="/")
  
# Start to check if your sample is normaly distributed and isotropic.
  generateCheckReport(AFMImage)
# If the sample is normaly distributed and isotropic, generate a full report
  generateReport(AFMImage)


# Analyse your own AFM image from nanoscope analysis (TM) software tool
   anotherAFMImage<-importFromNanoscope("c:/users/my_windows_login/myimage.txt")
# Start to check if your sample is normaly distributed and isotropic.
   generateCheckReport(anotherAFMImage)
# If your sample is normaly distributed and isotropic, generate a full report
   generateReport(anotherAFMImage)
}
}
\author{
M.Beauvais
}
