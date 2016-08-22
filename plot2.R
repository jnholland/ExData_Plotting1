 
data_all <- read.table("household_power_consumption.txt", header=T, sep = ';',na.strings = '?')
data_all$Date <- as.Date(data_all$Date, format="%d/%m/%Y")
str(data_all)

data <- subset(data_all, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_all)

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
str(data)



## Plot 2
plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")





