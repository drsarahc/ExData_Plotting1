##===================================================================
##       plot2.R       Last mod: August 10, 2014 at 14:10 PST
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

## Plot 2
png(filename="plot2.png")
plot(Pow$obstime, Pow$Global_active_power,ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()

##============================ EOF ==================================

