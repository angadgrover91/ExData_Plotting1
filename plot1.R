data1 <- file("household_power_consumption.txt")
data2 <- read.table(text = grep("^[1,2]/2/2007", readLines(data1), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = T)

# Generating Plot 1
hist(data2$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")