source("loadData.R")

# function to be called from command line to run plot
plot3 <- function(){
  
  #load data using function written in "loadData.R"
  data <- loadData()
  
  png("plot3.png", width=400, height=400)
  
  plot(data$Time, data$Sub_metering_1,  
       ylab="Energy sub metering",
       xlab="",
       type="l"     
  )
  lines(data$Time, data$Sub_metering_2,col="red")
  lines(data$Time, data$Sub_metering_3,col="blue")
  legend("topright",
         col=c("black","red","blue"),
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  dev.off()
  
}