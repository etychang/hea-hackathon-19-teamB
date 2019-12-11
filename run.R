# load packages
library(data.table) # reading data
library(dplyr) # data manipulations
library(shinydashboard) # template shiny dashboard
library(ggplot2) # plotting
library(DT) # reactive data tables for Shiny

# load data ----
# Beware takes awhile to load 
# source("R/load_data.R")

# do some data tidying ----
CountryList <- unique(sr_chart_6$`Country of domicile`)

# run the app ----
runApp('InternationalStudents')