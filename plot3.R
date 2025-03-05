#Plot 3 code
setwd("C:/Users/yuvalkad/OneDrive - weizmann.ac.il/Courses/Coursera/Exploratory Data Analysis/Project 1")
data_name = "household_power_consumption.txt"
data <- read.table(data_name, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
HousePowerFeb <- subset(data, Date == c("1/2/2007", "2/2/2007"))
SubMetering1 <- as.numeric(HousePowerFeb$Sub_metering_1)
SubMetering2 <- as.numeric(HousePowerFeb$Sub_metering_2)
SubMetering3 <- as.numeric(HousePowerFeb$Sub_metering_3)

png("plot3.png", width = 480, height = 480, units = "px")
plot(SubMetering1, type="l", xlab="", ylab="Energy Submetering", xaxt = "n")
lines(SubMetering2, col="red")
lines(SubMetering3, col="blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
axis(side = 1, at = c(1, length(SubMetering1)/2, length(SubMetering1)), labels = c("Thu", "Fri", "Sat"))

dev.off()
