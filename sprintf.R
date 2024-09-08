#sprintf function
#sprintf() function in R uses Format provided by the user to return the formatted string with the use of the values in the list.
x1<-"welcome"
x2<-"LPU"
sprintf("%s to %s",x1,x2)
x1 <- "LPU"
x2 <- 100
x3 <- "placements"

# Calling sprintf() function 
sprintf("% s gives %.0f percent % s", x1, x2, x3) 
cat("% s gives %.0f percent % s", x1, x2, x3)
paste("% s gives %.0f percent % s", x1, x2, x3)

x1<-"your result"
x2<-99.993
x3<-"percent"
x=sprintf("% s gives %.2f  % s", x1, x2, x3)
cat(x)
x1<-100
x2<-2
sprintf("%.0f gives %e",x1,x2)
