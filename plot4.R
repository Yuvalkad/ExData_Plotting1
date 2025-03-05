#Plot 4 code
setwd("C:/Users/yuvalkad/OneDrive - weizmann.ac.il/Courses/Coursera/Exploratory Data Analysis/Project 1")
data_name = "household_power_consumption.txt"
data <- read.table(data_name, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
HousePowerFeb <- subset(data, Date == c("1/2/2007", "2/2/2007"))

# Global Active Power
GlobalActivePower <- as.numeric(HousePowerFeb$Global_active_power)

# Voltage
Voltage <- as.numeric(HousePowerFeb$Voltage)

# Sub Metering 1-3
SubMetering1 <- as.numeric(HousePowerFeb$Sub_metering_1)
SubMetering2 <- as.numeric(HousePowerFeb$Sub_metering_2)
SubMetering3 <- as.numeric(HousePowerFeb$Sub_metering_3)

# Global Reactive Power
GlobalReactivePower <- as.numeric(HousePowerFeb$Global_reactive_power)

# Graphs
png("plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))

plot(GlobalActivePower, type = "l",xaxt = "n", xlab = "", ylab = "Global Active Power")
axis(side = 1, at = c(1, length(GlobalActivePower)/2, length(GlobalActivePower)), labels = c("Thu", "Fri", "Sat"))

plot(Voltage, type = "l",xaxt = "n", xlab = "datetime", ylab = "Voltage")
axis(side = 1, at = c(1, length(Voltage)/2, length(Voltage)), labels = c("Thu", "Fri", "Sat"))

plot(SubMetering1, type="l", xlab="", ylab="Energy Submetering", xaxt = "n")
lines(SubMetering2, col="red")
lines(SubMetering3, col="blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(side = 1, at = c(1, length(SubMetering1)/2, length(SubMetering1)), labels = c("Thu", "Fri", "Sat"))

plot(GlobalReactivePower, type = "l",xaxt = "n", xlab = "datetime", ylab = "Global_reactive_power")
axis(side = 1, at = c(1, length(GlobalReactivePower)/2, length(GlobalReactivePower)), labels = c("Thu", "Fri", "Sat"))

dev.off()
