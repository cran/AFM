% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFMReportMaker.R
\name{putImagesFromAnalysisOnDisk}
\alias{putImagesFromAnalysisOnDisk}
\title{Put the images from all analysis on disk}
\usage{
putImagesFromAnalysisOnDisk(AFMImageAnalyser, AFMImage, exportDirectory)
}
\arguments{
\item{AFMImageAnalyser}{an \code{\link{AFMImageAnalyser}}}

\item{AFMImage}{an \code{\link{AFMImage}}}

\item{exportDirectory}{where the images will be stored}
}
\description{
A function to put on disk all the images from variogram, PSD Analysis of an \code{\link{AFMImage}}
An AFM Image 3D representation is saved on disk thanks to the \code{\link{rgl}} package.
On Unix system, it is necessary to have a X server connection to be able to use the \code{\link{rgl}} package.
}
\author{
M.Beauvais
}
