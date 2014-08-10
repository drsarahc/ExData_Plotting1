##===================================================================
##       plot3.R       Last mod: August 10, 2014 at 14:10 PST
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

## Plot 3
png(filename="plot3.png")
plot(Pow$obstime, Pow$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="l", col="black")
lines(Pow$obstime, Pow$Sub_metering_2, col="red")
lines(Pow$obstime, Pow$Sub_metering_3, col="blue")
legend("topright", lwd=1, col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

##============================ EOF ==================================

