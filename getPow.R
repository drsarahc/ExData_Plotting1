##===================================================================
##       getPow.R       Last mod: August 10, 2014 at 14:10 PST
##===================================================================
## This program takes as input a largeish file of household power 
## consumption data and produces a subsetted data table.
##
## Created for the "Exploratory Data Analysis" course by S. Carroll
##===================================================================
## Packages needed: data.table
## User must specify range of dates/times to include, and infilename
##===================================================================
library(data.table)

## Set constants to indicate what range of dates and times is desired, inclusive
start <- strptime("01/02/2007 00:00:00", format="%d/%m/%Y %H:%M:%S", tz="GMT")
fin <- strptime("02/02/2007 23:59:59", format="%d/%m/%Y %H:%M:%S", tz="GMT")

## Specify infilename and then read all records from infile
infilename <- "/Users/SarahMBP/Desktop/Data Science Courses/Rcode/household_power_consumption.txt"

infile <- read.table(infilename,sep=";",header=TRUE, na.strings="?", stringsAsFactors=FALSE,
                     colClasses=c("character", "character", "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", "numeric"))

## Combine the date and time into a POSIXlt field
infile$obstime <- strptime(paste(infile$Date, infile$Time), format="%d/%m/%Y %H:%M:%S", tz="GMT")

## Ditch data that is not between start and fin
keepers <- (infile$obstime >= start & infile$obstime <= fin)
Pow <- infile[keepers, ]

##============================ EOF ==================================

