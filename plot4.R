dataset<-read.table("./Course 1/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
datasubset<-subset(dataset,Date=="1/2/2007"|Date=="2/2/2007",na.rm=TRUE)
datasubset$Timestamp<-paste(datasubset$Date,datasubset$Time)
datasubset$Timestamp<-strptime(datasubset$Timestamp, format="%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2)

plot(datasubset$Timestamp,as.numeric(as.character(datasubset$Global_active_power)),type="l",xlab="",ylab="Global Active Power")

plot(datasubset$Timestamp,as.numeric(as.character(datasubset$Voltage)),type="l",xlab="datetime",ylab="Voltage")

plot(datasubset$Timestamp,as.numeric(as.character(datasubset$Sub_metering_1)),type="l",xlab="",ylab="Energy sub metering")
lines(datasubset$Timestamp,as.numeric(as.character(datasubset$Sub_metering_2)),col="red")
lines(datasubset$Timestamp,as.numeric(as.character(datasubset$Sub_metering_3)),col="blue")
legend("topright",col=c("black","red","blue"),lty=1,lwd=2,legend=c("Sub_metering_1 ","Sub_metering_2 ","Sub_metering_3 "))

plot(datasubset$Timestamp,as.numeric(as.character(datasubset$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power")

dev.copy(png, file="plot4.png", height=480, width=480)

dev.off()



 

