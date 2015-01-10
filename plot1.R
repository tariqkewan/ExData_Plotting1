## This function will read the data on 1/2/2007 and 2/2/2007
f <- file("household_power_consumption.txt")
data <- read.table(text = grep("^[1,2]/2/2007", readLines(f), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
## This function will draw the required histogram
with (data , hist(Global_active_power,main="Global Active Power", col="red",xlab="Global reactive power(kilowatts)"))
## This function will copy the plot to png file.
dev.copy(png,file="plot1.png")
dev.off()
