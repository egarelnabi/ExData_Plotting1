source("loadData.R")


# function to be called from command line to run plot
plot1 <- function(){

  #load data using function written in "loadData.R"
  data <- loadData()
  
  
  png("plot1.png", width=400, height=400)
  
  hist(data$Global_active_power, 
       main="Global Active Power", 
       col="red", 
       xlab="Global Active Power (kilowatts)"
       )
  
  dev.off()
  
}

