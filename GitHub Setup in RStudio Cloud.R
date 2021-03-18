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

How to Install packages from GitHub and read files from github:
  ===============================================================
  install.packages("devtools")
library(devtools)
install_github("genomicsclass/dagdata")
dir <- system.file(package="dagdata") #extracts the location of package
list.files(dir)
list.files(file.path(dir,"extdata")) #external data is in this directory

And now we are ready to read in the file:
  filename <- file.path(dir,"extdata/femaleMiceWeights.csv")
dat <- read.csv(filename)


How to Clone Complete Repository from GitHub:
  =============================================
  1. Create a directory
2. Enter in Terminal "git clone "url"
3. in place of url, add the github SSH code


