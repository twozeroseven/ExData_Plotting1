source("loadData.R")
# data is in variable df

# load data if not in cache
if(is.null(data))
  data <- loadData()

png("plot3.png", width=480, height=480)

# create hist
plot(df$Time, df$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy Sub Metering")

lines(df$Time, df$Sub_metering_2, col="red")
lines(df$Time, df$Sub_metering_3, col="blue")

legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

# write png to disk
dev.off()