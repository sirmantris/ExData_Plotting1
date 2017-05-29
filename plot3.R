with(house_final, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")}) ##graph plot 3
lines(house_final$Sub_metering_2 ~ house_final$DateTime, col = 'Red')
lines(house_final$Sub_metering_3 ~ house_final$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


dev.copy(png, file="plot3.png", height=640, width=640) ##save file
dev.off() 

