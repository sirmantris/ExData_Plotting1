par(mfrow=c(2,2))
plot(house_final$Global_active_power ~ house_final$DateTime, type="l")  ##plot graph 4
plot(house_final$Voltage ~ house_final$DateTime, type="l")
with(house_final, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(house_final$Sub_metering_2 ~ house_final$DateTime, col = 'Red')
lines(house_final$Sub_metering_3 ~ house_final$DateTime, col = 'Blue')
plot(house_final$Global_reactive_power ~ house_final$DateTime, type="l") 
