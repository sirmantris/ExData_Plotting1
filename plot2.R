house1 <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?") ##read data
house2 <-rbind(house1[house1$Date=="1/2/2007",],house1[house1$Date=="2/2/2007",])
house2$Date <- as.Date(house2$Date,"%d/%m/%Y") ##date formatting
house_final<-cbind(house2, "Datetime" = as.POSIXct(paste(house2$Date, house2$Time))) 


plot(house_final$Global_active_power ~ house_final$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)") ##plot graph 2


dev.copy(png, file="plot2.png", height=640, width=640)
dev.off()
