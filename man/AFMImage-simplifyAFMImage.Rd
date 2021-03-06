% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AFMImage.R
\name{simplifyAFMImage}
\alias{simplifyAFMImage}
\title{simplify an AFM image.}
\usage{
simplifyAFMImage(AFMImage, newSamplesperline, newLines)
}
\arguments{
\item{AFMImage}{an \code{\link{AFMImage}} from Atomic Force Microscopy}

\item{newSamplesperline}{the new number of samplesperline of the AFMImage}

\item{newLines}{the new number of lines of the AFMImage}
}
\value{
a new simplified \code{\link{AFMImage}}
}
\description{
The simplification is taking a very simple gridded sample of the image. 
It can be useful to speed up display.
}
\details{
\code{simplifyAFMImage} returns a simplified AFMImage
}
\examples{
\dontrun{
  data(AFMImageOfAluminiumInterface)
  anAFMImageExtract<-simplifyAFMImage(AFMImageOfAluminiumInterface,16,16)
}

}
\author{
M.Beauvais
}
