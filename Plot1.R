png(file = "plot1.png")
all_data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=F, colClasses=c("Date", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
data <- all_data[(all_data$Date==as.Date("01/02/2007")) | (all_data$Date==as.Date("02/02/2007")),"Global_active_power"]
hist(data, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()