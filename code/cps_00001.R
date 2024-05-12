# NOTE: To load data, you must download both the extract's data and the DDI
# and also set the working directory to the folder with these files (or change the path below).

if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. It can be installed using the following command: install.packages('ipumsr')")

install.packages('here')
install.packages('ipumsr')

library(here)
library(ipumsr)

ddi <- read_ipums_ddi("/Users/charleneramos/Documents/Gradient Fund/immigration/data/cps_00001.xml")
data <- read_ipums_micro(ddi)
