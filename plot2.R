source("loadData.R")

# function to be called from command line to run plot
plot2 <- function(){
  
  #load data using function written in "loadData.R"
  data <- loadData()
  
  png("plot2.png", width=400, height=400)

  plot(data$Time, data$Global_active_power,  
       ylab="Global Active Power (kilowatts)",
       xlab="",
       type="l"
       
       )
 
  dev.off()
  
}