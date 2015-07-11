setwd('.')

file <- 'C:\\Users\\Dan\\Desktop\\Coursera\\EXData_Plotting1\\household_power_consumption.txt'

data <- read.csv(file,sep=';',header = TRUE)
#subset dates in February, input data is in d/m/y
data2 <- data[data['Date']=='1/2/2007'|data['Date']=='2/2/2007',]
png(filename = 'C:\\Users\\Dan\\Desktop\\Coursera\\EXData_Plotting1\\plot4.png', width = 480, height = 480, units = 'px')
ydat <- as.numeric(as.character(data2$Global_active_power))
par(mfrow = c(2,2),new=TRUE)
plot(as.numeric(as.character(data2$Global_active_power)), type="n",xaxt = 'n',ylab= 'Global Active Power',xlab='')
lines(ydat,main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'black',xlab='',ylab = 'Global Active Power (kilowatts)')
axis(1,at = c(1,floor(length(ydat)/2),length(ydat)), labels = c('Thursday','Friday','Saturday'))

voltdat <-as.numeric(as.character(data2$Voltage)) 
plot(voltdat, type="n",xaxt = 'n',ylab= 'Voltage',xlab='datetime')
lines(voltdat,main='', xlab = '', col = 'black',xlab='datetime',ylab = 'Voltage')
axis(1,at = c(1,floor(length(ydat)/2),length(ydat)), labels = c('Thursday','Friday','Saturday'))




Sub_metering_1 <- as.numeric(as.character(data2$Sub_metering_1))
Sub_metering_2 <- as.numeric(as.character(data2$Sub_metering_2))
Sub_metering_3 <- as.numeric(as.character(data2$Sub_metering_3))
plot(as.numeric(as.character(data2$Sub_metering_1)), type="n",xaxt = 'n',ylab= 'Energy sub meeting',xlab='')
#par(new=FALSE)
lines(Sub_metering_1,main = 'Energy sub meeting', xlab = 'Global Active Power (kilowatts)', col = 'black',xlab='', ylim = 40)
lines(Sub_metering_2,main = 'Energy sub meeting', xlab = 'Global Active Power (kilowatts)', col = 'red',xlab='', ylim = 40)
lines(Sub_metering_3,main = 'Energy sub meeting', xlab = 'Global Active Power (kilowatts)', col = 'blue',xlab='',ylab = 'Energy sub meeting', ylim = 40)
axis(1,at = c(1,floor(length(ydat)/2),length(ydat)), labels = c('Thursday','Friday','Saturday'))
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col= c('black','red','blue'),lty=1,cex=0.8, bty='n')
#par(new=TRUE)

reactdat <-as.numeric(as.character(data2$Global_reactive_power)) 
plot(reactdat, type="n",xaxt = 'n',ylab= 'Global_reactive_power',xlab='datetime')
lines(reactdat,main='', xlab = '', col = 'black')
axis(1,at = c(1,floor(length(ydat)/2),length(ydat)), labels = c('Thursday','Friday','Saturday'))

dev.off()