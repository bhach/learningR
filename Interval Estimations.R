options(digits=3)   #setting digits to 3

#Point Estimate of Population Mean#
height.survey = survey$Height
Point_Estimate <- mean(height.survey, na.rm=TRUE)
Point_Estimate

#Interval Estimate of Population Mean with Known Variance#
#Population Standard Deviation is given as 9.8#
#If the Population Variance is known, we use Z test#
height.response = na.omit(survey$Height)   #omit NAs#
n = length(height.response)     #sample size#
sigma = 9.48    #population standard deviation#
SE = sigma/sqrt(n)    #standard error#
#for 95% confidence interval, z=0.025
ME = SE*qnorm(.025)   #Margin Error#
xbar = mean(height.response)   #Sample Mean#
Interval_Estimates = xbar + c(-ME, ME)   
Interval_Estimates

#Simple Approach#
#Install TeachingDemos package#
?z.test
output<-z.test(height.response, sd=sigma,)
output


#Interval Estimate of Population Mean with Unknown Variance#
#If the Population variance is unknown, we can use Z test by taking sample standard deviation as population standard deviation only if the sample is very large, otherwise it is advised to use t-test.
s = sd(height.response)   #calculating sample standard deviation
SE = s/sqrt(n)
ME = SE*qt(.025, df=n-1)
xbar = mean(height.response)
Interval_Estimates<- xbar + c(-ME,ME)
Interval_Estimates

#Alternate Solution
output<-t.test(height.response)
output

#Point Estimate of Population Proportion#
gender.response = na.omit(survey$Sex)
n = length(gender.response)
k = sum(gender.response == "Female")
pbar = k/n
pbar


#Interval Estimate of Population Proportion#
SE = sqrt(pbar*(1-pbar)/n)
ME = SE*qnorm(.025)
Interval_Estimates<- pbar + c(-ME, ME)
Interval_Estimates

#Alternate Solution
output<-prop.test(k, n)
output



x<-sample(1:100,5)
y<-replicate(10000,{
  mean(x)
})
plot(y)

