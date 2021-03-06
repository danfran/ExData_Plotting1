hpc <- read.csv("household_power_consumption.txt",sep=";",na="?")
hpc$Time <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
hpc2 <- subset(hpc, hpc$Date %in% dates)