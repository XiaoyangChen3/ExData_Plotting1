data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data<- subset(data_full, Date %in% c("1/2/2007", "2/2/2007"))
data$Date <- as.Date(data$Date, format="%d%m%y")

hist(data$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency",col="red")
png("plot1.png", width=480, height=480)
dev.off()