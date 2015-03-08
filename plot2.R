source("loadData.R")
png("plot2.png",width = 480, height = 480)
plot(data1$Date_Time, data1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
