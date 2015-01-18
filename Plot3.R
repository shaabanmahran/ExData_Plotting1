png(file = "plot3.png")
all_data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=F, colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
data <- all_data[(all_data$Date=="1/2/2007") | (all_data$Date=="2/2/2007") | (all_data$Date=="01/02/2007") | (all_data$Date=="02/02/2007") | (all_data$Date=="1/02/2007") | (all_data$Date=="2/02/2007"),]
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S") 

plot(data$DateTime , data$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering", col="black")
lines(data$DateTime , data$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering", col="black")
lines(data$DateTime , data$Sub_metering_2, type = "l", xlab="", ylab="Energy sub metering", col="red")
lines(data$DateTime , data$Sub_metering_3, type = "l", xlab="", ylab="Energy sub metering", col="blue")
legend("topright" , legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  lwd=1 ,col = c("black","red", "blue"))

dev.off()
