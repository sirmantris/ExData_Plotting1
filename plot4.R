house1 <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
house2 <-rbind(house1[house1$Date=="1/2/2007",],house1[house1$Date=="2/2/2007",])
house2$Date <- as.Date(house2$Date,"%d/%m/%Y")
house_final<-cbind(house2, "DateTime" = as.POSIXct(paste(house2$Date, house2$Time)))


par(mfrow=c(2,2))
plot(house_final$Global_active_power ~ house_final$DateTime, type="l")  ##plot graph 4
plot(house_final$Voltage ~ house_final$DateTime, type="l")
with(house_final, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(house_final$Sub_metering_2 ~ house_final$DateTime, col = 'Red')
lines(house_final$Sub_metering_3 ~ house_final$DateTime, col = 'Blue')
plot(house_final$Global_reactive_power ~ house_final$DateTime, type="l")

dev.copy(png, file="plot4.png", height=640, width=640) ##save file
dev.off()

