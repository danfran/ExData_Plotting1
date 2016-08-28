source("load_data.R")

png("plot3.png", width=480, height=480)

plot(hpc2$Time, hpc2$Sub_metering_1, ylab = "Energy sub metering", xlab="", type="l")
lines(hpc2$Time, hpc2$Sub_metering_2, col="red")
lines(hpc2$Time, hpc2$Sub_metering_3, col="blue")

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"))

dev.off()
