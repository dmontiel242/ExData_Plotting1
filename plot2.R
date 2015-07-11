setwd('.')

file <- 'household_power_consumption.txt'
data <- read.csv(file,sep=';',header = TRUE)
#subset dates in February, input data is in d/m/y
data2 <- data[data['Date']=='1/2/2007'|data['Date']=='2/2/2007',]

ydat <- as.numeric(as.character(data2$Global_active_power))
plot(as.numeric(as.character(data2$Global_active_power)), type="n",xaxt = 'n',ylab= 'Global Active Power (kilowatts)')
lines(ydat,main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'black',xlab='',ylab = 'Global Active Power (kilowatts)')
axis(1,at = c(1,floor(length(ydat)/2),length(ydat)), labels = c('Thursday',,'Friday'Saturday'))