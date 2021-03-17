library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)
dat<-read.csv("femaleMiceWeights.csv")
dat

control<- dat%>%
  filter(Diet=="chow") %>%
  select(Bodyweight) %>%
  unlist

treatment<- dat %>%
  filter(Diet=="hf") %>%
  select(Bodyweight) %>%
  unlist

dat
attach(dat)
Diet
detach(dat)
Diet

a<-father.son
attach(a)
attach(dat)
Diet
sheight
