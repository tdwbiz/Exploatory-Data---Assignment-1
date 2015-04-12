## Read in the data
file <- "./household_power_consumption.txt" 
pwr <- read.table(file,header = TRUE,sep = ";",colClasses = c("character","character",rep("numeric",7)),na = "?") 
attach(pwr) 
#
## Get the data for two days in scope 
subset <- Date == "1/2/2007" | Date == "2/2/2007" 
newpwr <- pwr[subset, ] 
attach(newpwr) 
#
## Paste the Date and Time to DateTime
x <- paste(Date, Time) 
newpwr$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S") 
rownames(newpwr) <- 1:nrow(newpwr) 
attach(newpwr) 
