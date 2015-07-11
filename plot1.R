setwd('.')

file <- 'household_power_consumption.txt'
data <- read.csv(file,sep=';',header = TRUE)
#subset dates in February, input data is in d/m/y
data2 <- data[data['Date']=='1/2/2007'|data['Date']=='2/2/2007',]
hist(as.numeric(as.character(data2$Global_active_power)),main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'red')