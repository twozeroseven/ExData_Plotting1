#setwd('Documents/projects/datasciencecoursera/exploratory/ExData_Plotting1')

loadData <- function() {

  filename = "exdata_plotting1.zip"
  if (!file.exists(filename)) {
    retval = download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                           destfile = filename,
                           method = "curl")}
  
  data <- read.table(
    unz(filename, "household_power_consumption.txt"),
    header=TRUE,
    sep=";",
    colClasses=c("character", "character", rep("numeric",7)),
    na="?")
  
  # convert Date/Time class
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  
  # only use data from 2 days
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  df <- subset(data, Date %in% dates)
  
  return (df)
}
