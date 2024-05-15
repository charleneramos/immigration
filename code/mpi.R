# install.packages('readxl')
library(readxl)

setwd('/Users/charleneramos/Documents/Gradient Fund/immigration/data/')

raw_data_mpi <- read_xlsx('MPI-Data-Hub_Refugee-Admissions_1980-2024thruApril.xlsx')

df_mpi <- raw_data_mpi

# data cleaning
colnames(df_mpi) <- c('year', 'ceiling', 'admissions') # rename columns
df_mpi <- df_mpi[3:52,] # subset relevant rows
df_mpi$year[50] <- 2024 # remove asterick
df_mpi <- as.data.frame(apply(df_mpi, 2, as.numeric)) # change all columns to numeric






