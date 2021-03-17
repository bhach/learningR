#What is Exploratory Data Analysis?
Exploratory Data Analysis refers to the critical process of performing initial investigations on data so as to discover patterns,to spot anomalies,to test hypothesis and to check assumptions with the help of summary statistics and graphical representations.
It is a good practice to understand the data first and try to gather as many insights from it. EDA is all about making sense of data in hand,before getting them dirty with it.

3#Download and Import the data from https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/
#Lets look at some example here

head(winequality_white)

#Total No of rows and columns
dim(winequality_white)

#understanding the dataframe
class(winequality_white)

#Checking if NAs are there or not
sum(is.na(winequality_white))

#Find out which are categorical and quantitative values

summary(winequality_white)
#Observe Mean and Median in each column data. like which one is higher

#Try to find out outliers
Datapoint is considered as outlier if Max is more than or equal to 2 times the 3rd quartile
This is very basic assumption 
Outliers are either 3×IQR or more above the third quartile or 3×IQR or more below the first quartile.

#Observe eadh column data
unique(winequality_white$quality)
#quality ratings are given on a scale 1 to 10 and min is 3 and max is 9. No one gave 1,2,10 as ratings.
cbind(table(winequality_white$quality))
#It gives the histogram of ratings.
Most of the values are 5,6 and 7.

#Visualize the correlated data using Heat map and remove those for analysis

#To understand outliers
boxplot(winequality_white)


Example1:
EDA of Fathers Height and Sons Height
#install.packages(UsingR)
library(UsingR)
head(father.son)

typeof(father.son)
class(father.son)

x<-father.son$fheight
y<-father.son$sheight

#Making a Histogram Plot
hist(x,breaks=seq(floor(min(x)),ceiling(max(x))),main="Height Histogram",xlab="Hieght in inches",ylab="Frequency",col="red3")
#floor and ceiling are used so as to set the boundaries of classes

#Making Emprical Cummulative Disrubution Function
xs<-seq(floor(min(x)),ceiling(max(x)),0.1)
plot(xs,ecdf(x)(xs),type="l",xlab="Height in inches",ylab="F(x)")
#This reports the percentage of individuals that are below that number

#Making QQ (Quantile Quantile) plot
What is Q-Q Plot?
Quantile-quantile (q-q) plot is a graphical technique for determining if two data sets come from populations with a common distribution. A q-q plot is a plot of the quantiles of the first data set against the quantiles of the second data set


#Basic test to seee if the distrubution is a normal or not
mean(x<70)
pnorm(70,mean(x),sd(x))

#Above both values are very close and normal distrubution can be great approximation for this data.
#Keep checking by using various values instead of 70

