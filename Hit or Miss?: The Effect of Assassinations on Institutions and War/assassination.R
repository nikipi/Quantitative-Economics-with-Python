load('/Users/apple/Desktop/AssassinationsData.RData')
summary(AssassinationsData$npolity2dummy[AssassinationsData$year == 1900])

summary(AssassinationsData$npolity2dummy[AssassinationsData$year == 2000])

summary(AssassinationsData$absnpolity2dummy11[AssassinationsData$year== 1945])

summary(AssassinationsData$absnpolity2dummy11[AssassinationsData$year==1980])

# restrict the sample

data<- AssassinationsData
keep<- data$seriousattempt==1
data<-data[keep,]
estimate<- lm(absnpolity2dummy11 ~success,data=data)
estimate

# Test the hypothesis that  β  = 0 at the 5% level.

confint(estimate,'success',level=.95)


# The 95% confidence interval is (0.032, 0.186),
#and does not include 0, so therefore we reject the null hypothesis

summary(estimate)






