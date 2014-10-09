source("loadData.R")

plot4 <- function(){
  data <- loadData()
  
  png("plot4.png", width=400, height=400)
  
  par(mfrow=c(2,2))
  
  plot(data$Time, data$Global_active_power,  
       ylab="Global Active Power",
       xlab="",
       type="l"     
  )
  
  plot(data$Time, data$Voltage,  
       ylab="Voltage",
       xlab="datetime",
       type="l"     
  )
  
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
         lty=1,
         box.lwd=0)
  
  plot(data$Time, data$Global_reactive_power,  
       ylab="Global_reactive_power",
       xlab="datetime",
       type="l"     
  )
  
  dev.off()
  
}
