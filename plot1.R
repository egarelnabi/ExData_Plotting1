source("loadData.R")

plot1 <- function(){
  data <- loadData()
  
  png("plot1.png", width=400, height=400)
  
  hist(data$Global_active_power, 
       main="Global Active Power", 
       col="red", 
       xlab="Global Active Power (kilowatts)"
       )
  
  dev.off()
  
}

