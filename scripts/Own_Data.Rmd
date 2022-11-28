
Read in the simulated data 
```{r}
simulated_data <- read_csv("mydata/simulated_data_pps_data.csv")
```

Read in the empirical data 
```{r}
empirical_data <- read_csv("mydata/empirical_data_pps_data.csv")
```

Clean the names of the columns for easier work 
```{r}
library(janitor)
simulated_data <- simulated_data %>%
  clean_names()
empirical_data <- empirical_data %>%
  clean_names()
```

Select the columns with non-zero values for both simulated and empirical data 
```{r}
simulated_data <- simulated_data %>%
  select(max_pairwise_difference, max_pairwise_difference_excluding_ambiguous, max_variable_block_length, max_variable_block_length_excluding_ambiguous, min_pairwise_difference, min_pairwise_difference_excluding_ambiguous, theta, tajima_d, tajima_pi, segregating_sites)
empirical_data <- empirical_data %>%
  select(max_pairwise_difference, max_pairwise_difference_excluding_ambiguous, max_variable_block_length, max_variable_block_length_excluding_ambiguous, min_pairwise_difference, min_pairwise_difference_excluding_ambiguous, theta, tajima_d, tajima_pi, segregating_sites)
```

# Plots 
## Maximum Pairwise Difference 
```{r}
ggplot(simulated_data, aes(x=max_pairwise_difference)) +geom_density(alpha = 0.7,  fill="lightblue") + geom_vline(aes(xintercept=mean(empirical_data$max_pairwise_difference)), color = "blue", linetype="dashed", size = 1) + labs(title="Density curve of Mk Simulated Data:Maximum Pairwise Difference", x = "Maximum Pairwise Difference", y = "Density")  + theme_classic()
```

## Maximum Variable Block Length 
```{r}
ggplot(simulated_data, aes(x=max_variable_block_length)) +geom_density(alpha = 0.7,  fill="lightblue") + geom_vline(aes(xintercept=mean(empirical_data$max_variable_block_length)), color = "blue", linetype="dashed", size = 1) + labs(title="Density curve of Mk Simulated Data:Maximum Variable Block Length", x = "Maximum Variable Block Length", y = "Density")  + theme_classic()
```

## Minimum Pairwise Difference
```{r}
ggplot(simulated_data, aes(x=min_pairwise_difference)) +geom_density(alpha = 0.7,  fill="lightblue") + geom_vline(aes(xintercept=mean(empirical_data$min_pairwise_difference)), color = "blue", linetype="dashed", size = 1) + labs(title="Density curve of Mk Simulated Data:Minimum Pairwise Difference", x = "Minimum Pairwise Difference", y = "Density")  + theme_classic()
```

## Theta
```{r}
ggplot(simulated_data, aes(x=theta)) +geom_density(alpha = 0.7,  fill="lightblue") + geom_vline(aes(xintercept=mean(empirical_data$theta)), color = "blue", linetype="dashed", size = 1) + labs(title="Density curve of Mk Simulated Data:Theta", x = "Theta", y = "Density")  + theme_classic()
```

## Tajima's D 
```{r}
ggplot(simulated_data, aes(x=tajima_d)) +geom_density(alpha = 0.7,  fill="lightblue") + geom_vline(aes(xintercept=mean(empirical_data$tajima_d)), color = "blue", linetype="dashed", size = 1) + labs(title="Density curve of Mk Simulated Data:Tajima's D", x = "Tajima's D", y = "Density")  + theme_classic()
```

## Tajima's Pi 
```{r}
ggplot(simulated_data, aes(x=tajima_pi)) +geom_density(alpha = 0.7,  fill="lightblue") + geom_vline(aes(xintercept=mean(empirical_data$tajima_pi)), color = "blue", linetype="dashed", size = 1) + labs(title="Density curve of Mk Simulated Data:Tajima's Pi", x = "Tajima's Pi ", y = "Density")  + theme_classic()
```

## Segregating Sites 
```{r}
ggplot(simulated_data, aes(x=segregating_sites)) +geom_density(alpha = 0.7,  fill="lightblue") + geom_vline(aes(xintercept=mean(empirical_data$segregating_sites)), color = "blue", linetype="dashed", size = 1) + labs(title="Density curve of Mk Simulated Data:Segregating Sites", x = "Segregating Sites", y = "Density")  + theme_classic()
```
