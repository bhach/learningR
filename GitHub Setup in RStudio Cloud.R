#How to setup GitHub to RStudio Cloud
#Step1: Create an account on GitHub
#Step2: Create an empty repository in Github
#Step3: Create a new project in RStudio Cloud - RStudio Cloud > “New Project" > “New Project from Git Repository"
#Step4: Click on the Terminal tab and add "git config --global user.email "youremail@email.com"
#Step5: Click on the Terminal tab and add "git config --global user.name "yourusername"
#Step6: Click on the Terminal tab and add "git config remote.origin.url git@github.com:yourusername/Reponame.git"
#Step7: Go to Tools > Global Options > Git/SVN > Create Public Key and then dont fill anything and click create.
#Step8: Once public key is created, Click "View Public Key" and Copy it
#Step9: Go to GitHub > Settings > SSH Keys > Add Key and Paste the code

Now enjoy connected to Git all the time and do push and pull

How to Import Complete repository/Clone a existing repo
#Create a directory
#Enter in Terminal "git clone clone_url"


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
