setwd('.')

file <- 'C:\\Users\\Dan\\Desktop\\Coursera\\EXData_Plotting1\\household_power_consumption.txt'
data <- read.csv(file,sep=';',header = TRUE)
#subset dates in February, input data is in d/m/y
data2 <- data[data['Date']=='1/2/2007'|data['Date']=='2/2/2007',]
png(filename = 'C:\\Users\\Dan\\Desktop\\Coursera\\EXData_Plotting1\\plot1.png', width = 480, height = 480, units = 'px')
hist(as.numeric(as.character(data2$Global_active_power)),main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'red')
yticks = c(0,200,400,600,800,1000,1200)
axis(2,at = yticks, labels = as.character(c(0,200,400,600,800,1000,1200)))
dev.off()