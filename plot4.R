source("loadData.R")
# data is in variable df

# load data if not in cache
if(is.null(data))
  data <- loadData()

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

#1 - GAP / Time
plot(df$Time, df$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

#2 - Voltage / Time
plot(df$Time, df$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")

#3 - Energy Sub / Tim
plot(df$Time, df$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy Sub Metering")
lines(df$Time, df$Sub_metering_2, col="red")
lines(df$Time, df$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1,
       box.lwd=0)

#4 - GRP / Time
plot(df$Time, df$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global Active Power (kilowatts)")

# write png to disk
dev.off()