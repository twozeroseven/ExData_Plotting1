source("loadData.R")
# data is in variable df

# load data if not in cache
if(is.null(data))
  data <- loadData()

png("plot2.png", width=480, height=480)

# create hist
plot(df$Time, df$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

# write png to disk
dev.off()