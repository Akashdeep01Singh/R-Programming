#bollinger bands were developed by technical trader john bollinger
#designed to give investors a high probabity of
#identifying when an asset is oversold and overbought
#Quantmod stands for quantitative financial modelling framework
#two main functions:download data,charting
install.packages("quantmod")
library(quantmod)
#--------------------------------------
#downloading data
#use getSymbols to get data from yahoo or google(default is yahoo)
getSymbols("AAPL")
head(AAPL,n=3)
#-------------------------------------
#Quantmod draw nice charts of following common types:
 # line,bars,candlesticks
#-------------------------------
#the line chart displays closing price of the stockSymbols
chartSeries(AAPL,type="line",subset="2007",
            theme=chartTheme("white"))
#----------------------------------------------
#the bar chart displays open,high,low,close and 
#volume closing price of the stock
#the top of the bar is high and bottom is low
#the left stick is open and right stick is close
#if the close is higher than open,the bar is green, otherwise
#it is in orange color
chartSeries(AAPL,type="bar",subset = '2007-05::2007-06',
            theme = chartTheme("white"))
#-------------------
#candlestick chart is very similar to bar chart
#it also displays open,high,low,close and volume colsing price
#of the stock
chartSeries(AAPL,type="candlesticks",subset = '2007-05',
            up.col = "white",down.col="black",
            theme=chartTheme("white"))
#----------------------------------------------
#bollinger Band
#a channel (or band)is an area that surronds a trend within
#which price movement does not indicate formation of a new trend
chartSeries(AAPL,subset='2007-05::2009-01',
            theme=chartTheme("white"))
addBBands(n=20,sd=2)
