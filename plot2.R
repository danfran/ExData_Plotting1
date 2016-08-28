source("load_data.R")

png("plot2.png", width=480, height=480)

plot(hpc2$Time, hpc2$Global_active_power,ylab = "Global Active Power (kilowatts)", xlab="", type="l")

dev.off()
