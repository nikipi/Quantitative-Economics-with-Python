load("/Users/apple/Desktop/AJRData.RData")


estimate.a<-lm(logpgp95~avexpr,data=AJRData[which(AJRData$baseco=='1'),])
summary(estimate.a)

estimates.b <- lm(avexpr~logem4,data=AJRData[which(AJRData$baseco=="1"),])

summary(estimates.b)

## 2sls

