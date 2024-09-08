v <- 100:119
v
v[c(1,6,11,16)]
## exclude elements 1:15 (by specifying indexes -1 to -15
v[-15:-1]
l <- list(a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8,i=9,j=10)
l[1:3]
l[-7:-1]
# creating a vector from four numbers and a list of
# three more
v <- c(.295, .300, .250, .287, list(.102, .200, .303))
v
class(v)
#suppose that we wanted to represent a few properties of a
#parcel (a real, physical parcel, to be sent through the mail). Suppose the parcel is
#destined for New York, has dimensions of 2 inches deep by 6 inches wide by 9 inches

#long, and costs $12.95 to mail. The three properties are all different data types in R:
# a character, a numeric vector of length 3, and a vector of length 1. We could combine
#the information into an object like this:
parcel <- list(destination="New York",dimensions=c(2,6,9),price=12.95)
parcel
class(parcel)
parcel$price
