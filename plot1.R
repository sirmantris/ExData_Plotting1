house1 <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?") ##read data
house2 <-rbind(house1[house1$Date=="1/2/2007",],house1[house1$Date=="2/2/2007",])
house2$Date <- as.Date(house2$Date,"%d/%m/%Y") ##date formatting
house_final<-cbind(house2, "Datetime" = as.POSIXct(paste(house2$Date, house2$Time))) 


hist(as.numeric(house_final$Global_active_power), col="Red", main="Global Active Power",  ##plot graph 1
     xlab="Global Active power (kilowatts)", ylab="Frequency")


dev.copy(png, file="plot4.png", height=640, width=640) ##save file
dev.off()

