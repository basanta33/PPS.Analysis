---
title: "Khakurel_PKG"
author: "Basanta Khakurel"
date: "`r Sys.Date()`"
output: html_document
---

# PPS Analysis

An R package for using Posterior Predictive Simulated data from morphological characters using different models of evolution.

To install `PPS_Analysis` directly form github, use the package `remotes`:

``` 
remotes::install_github("basanta33/PPS_Analysis")
```

## Introduction

This R package consists of 5 simple functions to perform some tasks with data that is generated using Posterior Predictive Analyses in `revbayes`. 
We can clean up the data using some functions, plot the data using one of them, calculate the effect size of the column values of the data obtained and perform a linear regression in any specific column of the dataset. 

Some functions return the data.frame as the output, some give out plots and some just give numerical values as the output. 
 
The utilities of the functions in the package are needed to be done multiple times with different data sets so, I created those specific function so that they'll help me without any need of rewriting the codes several times. 

Some of the tasks of the functions are depended on other R Packages like `tidyverse`, `janitor`, and `ggplot2`. Please make sure you have those packages installed in your R to try out my functions. 

--- 

## Installation

```{r}
install.packages("tidyverse")
install.packages("janitor")
install.packages("ggplot2")
```
---

## Usage Examples

These are the columns of my data set. 

+ Number Invariant Sites - This is the column which consists information with characters that have varying rates of evolution.

+ Max GC - This is the number of highest Guanine-Cytosine content in the sequence.

+ Max Invariant Block Length - This column shows the maximum number of blocks that has no varying sites.

+ Max Pairwise Difference -This is the column with the statistic that intends to be sensitive to the model of rate-variation among site and/or among branches.

+ Max Variable Block Length - This column shows the maximum number of blocks that has varying sites.

+ Min GC - This is the number of minimum Guanine-Cytosine content in the sequence.

+ Min Pairwise Difference - This is the column with the statistic that finds the pair of sequences that has the smallest pairwise distance.

+ Number Invariable Block - This is the number of invariable blocks in the sequence.

+ Mean GC - This is the average GC content over all sequences.

+ Var GC - This tests if the variance in GC content between sequence is modeled plausibly.

+ Theta - This test statistic describes the genetic diversity in a population.

+ Tajima-D - This test statistic is the difference between two measures of genetic diversity: the mean pairwise differences and the number of segregating sites scaled to be in a neutrally evolving population of constant size.

+ Tajima-Pi - This is the sum of the pairwise differences divided by the number of pairs.

+ Segregating-Sites - This test statistic show the positions that show polymorphisms between related genes in a sequence.


###### Here are some functions and their examples. 

As you can see in the list above, the column names contain spaces and they are somewhat uneasy to work with, so the first function I have will clean all the column names for easy use, for this we need another R package `janitor`

```{r}
library(janitor)
library(tidyverse)
```

```{r}
my_data <- rename_col("data/simulated_data_pps_data.csv")
```

Thank you for installing the package. Hope the tutorial page will give you more insight on the usage of the package.
