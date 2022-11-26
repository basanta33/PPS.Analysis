#' create a density plot for the desired columns of the data set with an abline using the empirical data

#' @param sim_data is the simulated data set you want to use for the plot
#' @param emp_col is the column from the empirical data set  
#' @param sim_col is the column you want to use from the data set (needs to be the same as the emp_col)
#' @param xlabel is the title of the X-Axis
#'
#' @return gives you the resulting plot.
#'
#' @examples 
#' plot <- den_plot(simdata, empdata$column1, simdata$column1, "Title of the X-Axis")
#'

#function to remove blank columns from the data file
den_plot <- function(sim_data, emp_col, sim_col, xlabel){
  plot <- ggplot(sim_data, aes(x=sim_col)) +
    geom_density(alpha = 0.7,  fill="lightblue") + 
    labs(title = xlabel, x = xlabel, y = "Density")  + 
    geom_vline(aes(xintercept = mean(emp_col))) +
    theme_classic() 
  return(plot) # returns the data frame with cleaned values
}
