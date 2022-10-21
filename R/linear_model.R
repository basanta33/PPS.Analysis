# function for linear model
linear_model <- function(path_to_data){
  mydata <- read_csv(path_to_data) # read in the data using the function read_csv from the package tidyverse
  mydata <- mydata %>%  # pipe to use the package janitor to clean the data
    clean_names() # clean names will clean the column names for easier use
  model_fit <- lm(segregating_sites ~ tajima_pi, data = mydata) # model fitting for two columns
  return(summary(model_fit)) # returns the summary of model_fit 
}
