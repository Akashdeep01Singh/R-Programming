#A line graph is a pictorial representation of information which changes
#continuously over time within a line graph, there are points connecting the data
#to show continuous change.
#The lines in a line graph can move up and down based on the data
#plot(v,type,col,xlab,ylab)
#***********************************************
v<-c(13,22,28,7,31)
plot(v,type="o")
#***********************************************
v<-c(13,22,28,7,31)
plot(v,type="s",col="green",xlab="Month",ylab="temperature")
#**************************************************
v<-c(13,22,28,7,31)
w<-c(11,13,32,6,35)
x<-c(12,22,15,34,35)
plot(v,type="o",col="green",xlab="Month",ylab="temperature")
lines(w,type="o",col="red")
lines(x,type="o",col="blue")
title(main="mtcars",col.main='pink',font.main=4)
#Line chart legend
#The legend function allows adding legends in base R plots. 
#You just need to specify the position or the coordinates, 
#the labels of the legend, the line type and the color. 
#You can also specify a pch symbol if needed.
plot(x = 1:10, y = 1:10, type = "l")
lines(x = 1:10, y = sqrt(1:10), col = 2, type = "l")
legend("topright", legend = c("line 1", "line2"), lty = 1, col = 1:2)
