library(shiny)
library(UsingR)
library(manipulate)
max_plots<-5
dat<-read.table("/home/yshthdn/Documents/data.txt")
dat["timeInSecs"]<-NA

dat$timeInMsecs<-(1:nrow(dat))/1000
dat2<-dat[1:100,]

shinyServer(
        function(input, output) {
                output$newHist <- renderPlot({
                        hist(dat2$V1, xlab = "degree of swing", col = "lightblue",breaks = 50, main="Freqency of occurence")
                        #  hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
                        mu <- input$mu
                        lines(c(mu, mu), c(0, 400),col="red",lwd=5)
                        mse <- mean((dat2$V1 - mu)^2)
                        text(40, 100, paste("mu = ", mu))
                        text(0, 400, paste("MSE = ", round(mse, 2)))
                        
                }
                do.call
                
                )
                
                
        }
        
)