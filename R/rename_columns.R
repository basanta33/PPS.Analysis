#' Remove the columns with no data in it

#' @param path_to_data is the directory path where the data file is.
#'
#' @return gives you the data frame containing cleaned column names.
#'
#' @examples 
#' my_data <- rename_col("data/simulated_data_pps_data.csv")
#'

#function to clean up the columns from the data file
rename_col <- function(path_to_data){
  mydata <- read_csv(path_to_data) # read in the data using the function read_csv from the package tidyverse
  mydata <- mydata %>%  # pipe to use the package janitor to clean the data
    clean_names() # clean names will clean the column names for easier use
  write.csv(mydata, file = "data/cleaned_names_simulated.csv", row.names = FALSE, col.names = FALSE) #this statement will write the cleaned data frame into a csv file in the data folder
  return(mydata)
}
