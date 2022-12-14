% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linear_model.R
\name{linear_model}
\alias{linear_model}
\title{Linear Model Testing between values of two columns}
\usage{
linear_model(data, x, y)
}
\arguments{
\item{data}{is the data set you want to use}

\item{x}{is the x column of the data set}

\item{y}{is the y column of the data set}
}
\value{
It gives the summary of model_fit variable including R-Squared values and Intercepts.
}
\description{
Linear Model Testing between values of two columns
}
\examples{
linear_model(mydata, mydata$col1, mydata$col2)
}
