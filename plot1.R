source("data_load.R")
png(filename="plot1.png",width=480,height=480,units="px")
hist(Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.off()