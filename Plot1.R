#Read Data
FullData <- read.table ("F:/Data Science/Data Science/CourseraClasses/ExploratoryDataAnalysis/Hw1/exdata-data-household_power_consumption/household_power_consumption.txt",header = TRUE, sep = ";", as.is=TRUE)
FebData <- subset(FullData, (FullData$Date == "2/2/2007" | FullData$Date == "1/2/2007")) #Read data on the first two days of Feb 2007
head(FebData)  #Check FebData 
                                    
#Draw plot 1
png("F:/Data Science/Data Science/CourseraClasses/ExploratoryDataAnalysis/Hw1/plot1.png", width = 480, height = 480)
hist(as.numeric(FebData$Global_active_power), main = "Global Active power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off () 


