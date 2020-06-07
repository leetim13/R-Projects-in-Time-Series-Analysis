#load data
setwd("C://Users//hwtim//Downloads")
data <- read.csv('Canadian Carrot Prices.csv', header=FALSE)$V2 #get second col only
getremove_header = data[-1] #remove header "Canadian Carrot Prices"
numeric_data = as.numeric(levels(remove_header))[remove_header] #convert to numeric data
num_data = length(numeric_data) #150 total observations
ts = ts(numeric_data, freq=12) #convert to time series 
plot(ts, ylab = "Canadian Carrot Price", main = "Time Series Plot of Canadian Carrot Prices")
