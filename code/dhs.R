# install.packages('readxl')

library(here)
library(readxl)

# bring in multiple CSVs at once
setwd('/Users/charleneramos/Documents/Gradient Fund/immigration/data/DHS Nationwide Encounters/')
temp = list.files(pattern="\\.csv$")
myfiles = lapply(temp, read.csv)


