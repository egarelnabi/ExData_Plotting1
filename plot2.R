source("loadData.R")

plot2 <- function(){
  
  data <- loadData()
  
  png("plot2.png", width=400, height=400)

  plot(data$Time, data$Global_active_power,  
       ylab="Global Active Power (kilowatts)",
       xlab="",
       type="l"
       
       )
 
  dev.off()
  
}