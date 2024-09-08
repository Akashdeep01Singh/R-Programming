#A "scatter plot" is a type of plot used to display the relationship 
#between two numerical variables, and plots one dot for each 
#observation.
#It needs two vectors of same length, 
#one for the x-axis (horizontal) and one for the y-axis (vertical):

# Define the cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)
# Graph the cars vector with all defaults
plot(cars)
# Define the cars vector with 5 values
cars <- c(1, 3, 6, 4, 9)

# Graph cars using blue points overlayed by a line 
plot(cars, type="o", col="blue")
plot(cars, type="s", col="blue")
# Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=10)

# Define 2 vectors
cars <- c(1, 3, 6, 4, 9)
trucks <- c(2, 5, 4, 5, 12)
plot(cars,trucks)

# Graph cars using a y axis that ranges from 0 to 12
plot(cars, type="o", col="blue", ylim=c(0,12))

# Graph trucks with red dashed line and square points
lines(trucks, type="o", pch=22, lty=2, col="red")

# Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=4)