dat<-read.table("data.txt")
dat["timeInSecs"]<-NA

dat$timeInSecs<-(1:nrow(dat))/1000
dat2<-dat[1:100,]
library(ggplot2)
qplot("timeInSecs",log(dat2$V1),data=dat2)

with(dat2,plot(dat2$"timeInSecs",dat2$"V1",xlab = "Milli Seconds",ylab="Generic Swing Units"),main = "Time and swing in cradle for random sample")
title()
with(subset(dat2, dat2$V1 > 420), points(dat2$timeInSecs, dat2$V1, col = "blue"),lty=2)
plot(dat2$timeInSecs, dat2$V1,xlab = "Milli Seconds",ylab="Generic Swing Units", type = "l", lty = 2)
abline(h = 410, lwd = 2, lty = 2)
model <- lm(dat2$V1~ dat2$timeInSecs, dat2)
abline(model, lwd = 2,lty=2)
par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(dat2$V1, xlab = "degree of swing", col = "green", main="Freqency of occurence")
#data