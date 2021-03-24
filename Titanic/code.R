install.packages("tidyverse")
library(tidyverse)
library(tidyr)
setwd("/cloud/project/Titanic")
train_data<-read_csv("./train.csv")
test_data<-read_csv("./test.csv")
submission_data<-read_csv("./submission.csv")


Combine the model
full  <- bind_rows(train_data, test_data)

Treat NAs of numeric values

total$Fare[which(is.na(total$Fare))] <- median(total$Fare,na.rm=T)
total$Age[which(is.na(total$Age))] <- median(total$Age,na.rm=T)
total$Embarked[which(is.na(total$Embarked))] <- "S"

Treat NAs of Categorical values by Casting
total$Embarked<-as.factor(total$Embarked)
> total$Cabin<-as.factor(total$Cabin)
> total$Sex<-as.factor(total$Sex)
> total$Pclass<-as.factor(total$Pclass)


Seperation:
  train2<-total %>%
  + filter(train=="TRUE")

test2<-total %>%
  + filter(train=="FALSE")

After spliing , convert the survuved ib train dataset as also factor()
train2$Survived<-as.factor(train2$Survived)


survived.equation <- "Survived ~ Pclass + Age + Sex + SibSp + Parch + Ticket + Fare + Embarked"
survived.formula <- as.formula(survived.equation)

install.packages("randomForest")
library(randomForest)
titanic.model <- randomForest(formula = survived.formula,data = train2,ntree=500,mtry=3,nodesize=0.01*nrow(test2))

features.equation <- "Pclass + Age + Sex + SibSp + Parch + Ticket + Fare + Embarked"
survived<-predict(titanic.model,newdata = test2)




Sample model this is....
Model depends on the cleaning..replacing with medians is a bad choice


