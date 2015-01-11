data_full <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
data_full$Date <- as.Date(data_full$Date, format = "%d/%m/%Y")

data3 <- subset(data_full, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)

datetime <- paste(as.Date(data3$Date), data3$Time)
data3$Datetime <- as.POSIXct(datetime)

# Generating Plot 2
plot(data3$Global_active_power ~ data3$Datetime, type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)" )