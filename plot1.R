#EXPLORATORY DATA ANALYSIS- PROJECT 1
#
# README
#
# The Dataset: Electric power consumption 
# Description: Measurements of electric power consumption in one household with a one-minute 
# sampling rate over a period of almost 4 years. Different electrical quantities and some 
# sub-metering values are available.

# The zip file described above can be found at the following address: 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# Unzip the file and place the "household_power_consumption.txt" file in the same directory as this code file
# The program assumes that the file is in the same directory (the working directory)

# Step 1: Read in the file
library(data.table)
library(base)

EPC <- read.table("household_power_consumption.txt", header=TRUE, sep=";",colClasses = "character")

# We will only be using data from the dates 2007-02-01 and 2007-02-02. 
twoDays <- EPC[EPC$Date=="1/2/2007"|EPC$Date=="2/2/2007",]

# Create the first plot
hist(as.numeric(twoDays$Global_active_power), main = "Global Active Power", xlab = "Global Active Power (Kilowatts)", col="red", ylim=c(0,1200))

# Copy the plot out to a PNG file
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()


