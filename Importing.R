How to Import a data file from github
#Go to the file and click raw
#Copy the url
#Install and load downloader package
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)


How to Install packages from GitHub and read files from github
install.packages("devtools")
library(devtools)
install_github("genomicsclass/dagdata")
dir <- system.file(package="dagdata") #extracts the location of package
list.files(dir)
list.files(file.path(dir,"extdata")) #external data is in this directory

And now we are ready to read in the file:
  
  filename <- file.path(dir,"extdata/femaleMiceWeights.csv")
dat <- read.csv(filename)
dat
head(dat)
library(dplyr)
library(tidyverse)
chow <- dat%>%
  filter(Diet=="chow")
chow
chow_weight <-chow%>%
  select(Bodyweight)
chow_weight
unlisted_weights <- chow_weight %>%
  unlist() %>%
  print(unlisted_weights)
unlist(chow_weight)
