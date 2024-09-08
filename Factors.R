#Factors in R Programming Language are data structures 
#that are implemented to categorize the data or 
#represent categorical data and store it on multiple levels. 
# Creating a vector
x <-c("female", "male", "male", "female")
# Converting the vector x into a factor 
gender <-factor(x)
gender
#OR
gender<- factor(c("MALE","FEMALE","MALE","FEMALE"))

gender
#Levels can also be predefined by the programmer. 

gender <- factor(c("female", "male", "male", "female"),
                 levels = c("female", "transgender", "male"));

gender
#******************************************************************
blood<-factor(c("O","AB+","O","AB+"),levels=c("A","B","AB","AB+","O","O+"))
blood

name <- c("John","Jane","Smith","Jia")
temperature <- c (98.1,98.6,101.4,97.2)

flu_status <- c(FALSE,FALSE,TRUE,FALSE)
#LIST:different datatypes
subject1<- list(fullname=name,
                temperature=temperature,
                gender=gender,
                blood=blood)
subject1

#specific value from list:
subject1$fullname

#data frames: list of vectors or factors
data1<- data.frame(name,temperature,flu_status,
                   gender,blood)

data1

data1$name
#all rows from first column
data1[,1]

#all columns from first row
data1[1,]

data1[c(1,3),c("temperature","gender")]

data1[-2,c(-1,-3,-5)]

data1[c(1,3),c(2,4)]

#modifying factors
status<-factor(c("single","married","single","single"))
status
status[1]<-"married"
status
status[2]<-"divorced"#error invalid factor level
#length
length(status)
#add value out of predefined levels, then first modify levels. 
levels(status) <- c(levels(status), "other") 
levels(status)
status[3]<-"other"
status
as.data.frame(status)
class(status)
#generating factor levels using gl function
#gl(n, k, labels)
#n is a integer giving the number of levels.
#k is a integer giving the number of replications.
#labels is a vector of labels for the resulting factor levels.
x<-gl(3,2,labels=c("Male","Female","Transgender"))
x
y=gl(3,4,labels=c(1,2,3))
y
