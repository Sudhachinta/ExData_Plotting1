
## Set the working directory
setwd("./Downloads")
## Unzip the downloaded zip file, I have renamed the downloaded file to testzip.zip
unzip("testzip.zip", files = NULL, list = FALSE, overwrite = TRUE, junkpaths = FALSE, exdir = ".", unzip = "internal", setTimes = FALSE) 
## Read the necessary data into R
Data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

## As mentioned in the question, set the date as date class
Data$Date <- as.Date(Data$Date, "%d/%m/%Y")

## Subset the requrired data
SData <- subset(Data,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Convert date and time to the required classes, 
## pasting the two columns to make it easier while plotting
DT <- paste(as.Date(SData$Date), SData$Time)
SData$Datetime <- as.POSIXct(DT)

## Generating plots
## Plot 1 - Histogram
Plot1 <- hist(SData$Global_active_power, main = "Global Active Power", col = 'red', xlab = "Global Active Power (Kilowatts)")
## Save plot 1, in a png graphics device
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()





