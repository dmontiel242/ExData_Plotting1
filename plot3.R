setwd('.')

file <- 'household_power_consumption.txt'
data <- read.csv(file,sep=';',header = TRUE)
#subset dates in February, input data is in d/m/y
data2 <- data[data['Date']=='1/2/2007'|data['Date']=='2/2/2007',]

ydat <- as.numeric(as.character(data2$Sub_metering_1))
ydat2 <- as.numeric(as.character(data2$Sub_metering_2))
ydat3 <- as.numeric(as.character(data2$Sub_metering_3))
plot(as.numeric(as.character(data2$Sub_metering_1)), type="n",xaxt = 'n',ylab= 'Global Active Power (kilowatts)')
lines(ydat,main = 'Energy sub meeting', xlab = 'Global Active Power (kilowatts)', col = 'black',xlab='',ylab = 'Global Active Power (kilowatts)', ylim = 40)
lines(ydat2,main = 'Energy sub meeting', xlab = 'Global Active Power (kilowatts)', col = 'red',xlab='',ylab = 'Global Active Power (kilowatts)', ylim = 40)
lines(ydat3,main = 'Energy sub meeting', xlab = 'Global Active Power (kilowatts)', col = 'blue',xlab='',ylab = 'Global Active Power (kilowatts)', ylim = 40)
axis(1,at = c(1,floor(length(ydat)/2),length(ydat)), labels = c('Thursday','Friday','Saturday'))