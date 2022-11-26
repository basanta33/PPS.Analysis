#' Remove the columns with no data in it

#' @param data is the data set you want to remove the blank columns from 
#'
#' @return gives you the data frame containing columns that has data in it.
#'
#' @examples 
#' data_w_values <- remove_blank("mydata")
#' @export

#function to remove blank columns from the data file
remove_blank <- function(data){
    mydata_selected <- data %>%  # pipe to select out useful columns from the data frame
    select(max_pairwise_difference, max_pairwise_difference_excluding_ambiguous, max_variable_block_length, max_variable_block_length_excluding_ambiguous, min_pairwise_difference, min_pairwise_difference_excluding_ambiguous, theta, tajima_d, tajima_pi, segregating_sites)
  write.csv(mydata_selected, file = "data/col_with_values.csv", row.names = FALSE, col.names = FALSE) #this statement will write the cleaned data frame into a csv file in the data folder
  return(mydata_selected) # returns the data frame with cleaned values
}
