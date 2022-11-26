#' calculate the effect size of the column values 

#' @param sim_col is the column of the simulated data set
#' @param emp_col is the corresponding column of the empirical data set  
#'
#' @return gives you the effect size of the column values
#'
#' @examples
#'effect_size(simdata$tajima_pi, empdata$tajima_pi)  
#' @export

#function to calculate the effect size for any column
effect_size <- function(sim_col, emp_col){
  sim_median <- median(sim_col)
  effectsize <- abs((sim_median - emp_col) / sd(sim_col))
  return(effectsize)
}
