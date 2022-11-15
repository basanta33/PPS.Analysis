#' Linear Model Testing between values of two columns

#' @param path_to_data is the directory path where the data file is.
#'
#' @return It gives the summary of model_fit variable including R-Squared values and Intercepts.  
#'
#' @examples 
#' linear_model("data/col_with_values")
#'
# function for linear model
linear_model <- function(path_to_data){
  mydata <- read_csv(path_to_data) # read in the data using the function read_csv from the package tidyverse
  model_fit <- lm(segregating_sites ~ tajima_pi, data = mydata) # model fitting for two columns
  return(summary(model_fit)) # returns the summary of model_fit 
}
