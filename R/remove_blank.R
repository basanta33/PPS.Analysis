#' Remove the columns with no data in it

#' @param path_to_data is the directory path where the data file is.
#'
#' @return gives you the data frame containing columns that has data in it.
#'
#' @examples 
#' remove_blank("data/cleaned_names_simulated.csv")
#'

#function to remove blank columns from the data file
remove_blank <- function(path_to_data){
  mydata <- read_csv(path_to_data) # read in the data using the function read_csv from the package tidyverse
  mydata_selected <- mydata %>%  # pipe to select out useful columns from the data frame
    select(max_pairwise_difference, max_pairwise_difference_excluding_ambiguous, max_variable_block_length, max_variable_block_length_excluding_ambiguous, min_pairwise_difference, min_pairwise_difference_excluding_ambiguous, theta, tajima_d, tajima_pi, segregating_sites)
  write.csv(mydata_selected, file = "data/col_with_values.csv", row.names = FALSE, col.names = FALSE) #this statement will write the cleaned data frame into a csv file in the data folder
  return(mydata_selected) # returns the data frame with cleaned values
}
