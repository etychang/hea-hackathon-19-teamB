# load packages
library(data.table)
library(dplyr)
library(readr)
library(shinydashboard)
library(ggplot2)

# load data ----
# Beware takes awhile to load 


# do data tidying ----
CountryList <- unique(sr_chart_6$`Country of domicile`)

# run the app ----
runApp('InternationalStudents')