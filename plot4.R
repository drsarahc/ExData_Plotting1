##===================================================================
##       plot4.R       Last mod: August 10, 2014 at 14:10 PST
##===================================================================
## This program calls a subroutine to create the Pow data table,
## if it does not already exist.
##
## Created for the "Exploratory Data Analysis" course by S. Carroll
##===================================================================
## Packages needed: data.table
##===================================================================
library(data.table)

if (!exists("Pow")) {
  source("getPow.R")
}

##===================================================================
## Create desired plot.
##===================================================================

setwd("/Users/SarahMBP/Desktop/Data Science Courses/Rcode/ExData_Plotting1")

## Plot 4 will contain four plots in a 2x2 configuration
png(filename="plot4.png")
par(mfrow=c(2,2))

## topleft
plot(Pow$obstime, Pow$Global_active_power,ylab="Global Active Power", xlab="", type="l")

## topright
plot(Pow$obstime, Pow$Voltage,xlab="datetime",ylab="Voltage", type="l")

## bottomleft
plot(Pow$obstime, Pow$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="l", col="black")
lines(Pow$obstime, Pow$Sub_metering_2, col="red")
lines(Pow$obstime, Pow$Sub_metering_3, col="blue")
legend("topright", lwd=1, col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")

## bottomright
plot(Pow$obstime, Pow$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type="l", col="black")

## all done!
dev.off()


##============================ EOF ==================================

