# install.packages('readxl')
library(readxl)

# bring in multiple CSVs at once
setwd('/Users/charleneramos/Documents/Gradient Fund/immigration/data/DHS Nationwide Encounters/')
temp = list.files(pattern="\\.csv$")
dhs_files = lapply(temp, read.csv)

rm(temp)
