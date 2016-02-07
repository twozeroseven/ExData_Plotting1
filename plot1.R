source("loadData.R")
# data is in variable df

# load data if not in cache
if(is.null(data))
  data <- loadData()

png("plot1.png", width=480, height=480)

# create hist
hist(df$Global_active_power,
     col="red",
     main="Global Active Power",
     ylab="Frequency",
     xlab="Global Active Power (kilowatts)")

# write png to disk
dev.off()