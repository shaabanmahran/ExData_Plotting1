png(file = "plot2.png")
all_data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=F, colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
data <- all_data[(all_data$Date=="1/2/2007") | (all_data$Date=="2/2/2007") | (all_data$Date=="01/02/2007") | (all_data$Date=="02/02/2007") | (all_data$Date=="1/02/2007") | (all_data$Date=="2/02/2007"),]
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S") 
plot(data$DateTime , data$Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()