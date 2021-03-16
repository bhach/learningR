options(digits=3)   #setting digits to 3


#Interval Estimate of Population Mean with Known Variance#
#Population Standard Deviation is given as 9.8#
height.response = na.omit(survey$Height)   #omit NAs#
n = length(height.response)     #sample size#
sigma = 9.48    #population standard deviation#
sem = sigma/sqrt(n)    #standard error#
#for 95% confidence interval, z=0.025
ME = sem*qnorm(.025)   #Margin Error#
xbar = mean(height.response)   #Sample Mean#
Estimate = xbar + c(-ME, ME)   
Estimate

#Simple Approach#
#Install TeachingDemos package#
?z.test

