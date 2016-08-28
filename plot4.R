source("load_data.R")

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(hpc2$Time, hpc2$Global_active_power,ylab = "Global Active Power (kilowatts)", xlab="", type="l")

plot(hpc2$Time, hpc2$Voltage,ylab = "Voltage", xlab="datetime", type="l")

plot(hpc2$Time, hpc2$Sub_metering_1, ylab = "Energy sub metering", xlab="", type="l")
lines(hpc2$Time, hpc2$Sub_metering_2, col="red")
lines(hpc2$Time, hpc2$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"))

with(hpc2, plot(Time, Global_reactive_power, xlab="datetime", type="l"))

dev.off()