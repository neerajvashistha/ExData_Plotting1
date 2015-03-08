data <- read.table("household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";",
                   stringsAsFactors = FALSE,
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
data$Date_Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data1 <- data[ which(data$Date_Time >= "2007-02-01" & data$Date_Time < "2007-02-03") , ]