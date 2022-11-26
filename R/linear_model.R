#' Linear Model Testing between values of two columns

#' @param data is the data set you want to use
#' @param x is the x column of the data set 
#' @param y is the y column of the data set 
#'
#' @return It gives the summary of model_fit variable including R-Squared values and Intercepts.  
#'
#' @examples 
#' linear_model(mydata, mydata$col1, mydata$col2)
#' @export

# function for linear model
linear_model <- function(data, x, y){
  model_fit <- lm(y ~ x, data = data) # model fitting for two columns
  return(summary(model_fit)) # returns the summary of model_fit 
}
