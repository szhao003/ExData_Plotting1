#Read Data
FullData <- read.table ("F:/Data Science/Data Science/CourseraClasses/ExploratoryDataAnalysis/Hw1/exdata-data-household_power_consumption/household_power_consumption.txt",header = TRUE, sep = ";", as.is=TRUE)
FebData <- subset(FullData, (FullData$Date == "2/2/2007" | FullData$Date == "1/2/2007")) #Read data on the first two days of Feb 2007
head(FebData)  #Check FebData

# convert Date and Time variables to Date/Time classe
DateTime<- strptime(paste(FebData$Date, FebData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") #concate strings
head(DateTime)

#Draw plot 3
png("F:/Data Science/Data Science/CourseraClasses/ExploratoryDataAnalysis/Hw1/plot3.png", width = 480, height = 480)
plot(DateTime, as.numeric(FebData$Sub_metering_1), type = "l", xlab="", ylab = "Energy Submetering")
lines(DateTime,as.numeric(FebData$Sub_metering_2), type= "l", col = "red")
lines(DateTime,as.numeric(FebData$Sub_metering_3), type= "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=1, col=c("black", "red", "blue"))
dev.off () 
