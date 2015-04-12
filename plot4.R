source("data_load.R")
#
png(filename="plot4.png",width=480,height=480,units="px")
##Output to PNG
#
## Setup the canvas
par(mfrow=c(2,2))
#
## Top Left
plot(DateTime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
#
##Top Right
plot(DateTime,Voltage,type="l",xlab="datetime",ylab="Voltage")
#
##Bottom Left
plot(DateTime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(DateTime,Sub_metering_2,col="red")
lines(DateTime,Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1)
#
##Bottom right
plot(DateTime,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()