#Plot 2 code
setwd("/Users/shanyegozi/Documents/תואר שני/Courses/Exploratory Data Analysis/Project 1")
data_name = "household_power_consumption.txt"
data <- read.table(data_name, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
HousePowerFeb <- subset(data, Date == c("1/2/2007", "2/2/2007"))
GlobalActivePower <- as.numeric(HousePowerFeb$Global_active_power)

png("plot2.png", width = 480, height = 480, units = "px")
plot(GlobalActivePower, type = "l",xaxt = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
axis(side = 1, at = c(1, length(GlobalActivePower)/2, length(GlobalActivePower)), labels = c("Thu", "Fri", "Sat"))
dev.off()
