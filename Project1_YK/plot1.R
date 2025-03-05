#Plot 1 code
setwd("/Users/shanyegozi/Documents/תואר שני/Courses/Exploratory Data Analysis/Project 1")
data_name = "household_power_consumption.txt"
data <- read.table(data_name, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
HousePowerFeb <- subset(data, Date == c("1/2/2007", "2/2/2007"))
GlobalActivePower <- as.numeric(HousePowerFeb$Global_active_power)

png("plot1.png", width = 480, height = 480, units = "px")
hist(GlobalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
