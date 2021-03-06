% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saveload.R
\name{saveHistry}
\alias{saveHistry}
\alias{loadHistry}
\title{Save and load Histry data}
\usage{
saveHistry(file = "./histry.rds", append = TRUE,
  trackr = histry_tracker())

loadHistry(file = "./.histry.rds", trackr = histry_tracker())
}
\arguments{
\item{file}{character. The file to save your history within. When loading, assumed to be an RDS file. when saving, written as an RDS file.}

\item{append}{logical. Should any history already saved to \code{file} be retained when the new history is saved. defaults to TRUE}

\item{trackr}{a history tracker object}
}
\description{
Save and load Histry data. Experimental.
}
