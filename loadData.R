loadData <- function(){
  
  data <- read.csv("household_power_consumption.txt",
                   sep=";", 
                   na.strings="?", 
                   colClasses=c("character","character",rep("numeric",7)))
  data$Time <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date,"%d/%m/%Y") 
  
  
  subData <- subset(data, Date %in% as.Date(c("01/02/2007", "02/02/2007"), "%d/%m/%Y"))
  
  return(subData)                   
  
}