dataset<-read.table("./Course 1/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
datasubset<-subset(dataset,Date=="1/2/2007"|Date=="2/2/2007",na.rm=TRUE)
datasubset$Timestamp<-paste(datasubset$Date,datasubset$Time)
datasubset$Timestamp<-strptime(datasubset$Timestamp, format="%d/%m/%Y %H:%M:%S")

hist(as.numeric(as.character(datasubset$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)

dev.off()
 

