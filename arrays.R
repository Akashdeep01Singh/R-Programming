#arrays
#An array is a multidimensional vector. Vectors and arrays 
#are stored the same way internally, but an array 
#may be displayed differently and accessed differently. An array
#object is just a vector that’s associated with a dimension attribute
vector1=c(5,5,3)
vector2=c(1,2,10,20,3,4)
array1<-array(c(vector1,vector2))#1D array
array1
#****************************************************
array1<-array(c(vector1,vector2),dim=c(4,2))#4 rows 2 columns,extra values will be removed
array1
class(array1)
array1[2,2]#value at 2nd row 2nd column
#modify the array
array1[2,2]<-1000
array1
array1[1:2,1:2]#row 1to2,column 1to2
#To get all rows (or columns) from a dimension, simply omit the indices:
array1[2,] #2nd row only
array1[,2] #2nd column only
# # you can also refer to a range of rows
array1[1:2,]
# you can even refer to a noncontiguous set of rows
array1[c(1,3),]

#***************************************************
vector1=c(5,5,3)
vector2=c(1,2,10,20,3,4,3,4)
array1<-array(c(vector1,vector2),dim=c(4,3))#if values are less than that of given dimensions, values will be repeating from starting index of first vector
array1
#Arrays can have more than two dimensions.
a <- array(data=1:24,dim=c(3,4,2))#3rows,4 columns,2dimensions
a
a[1,1,1]
#When selecting a subset, R will automatically coerce the result to the 
#most appropriate number of dimensions. If you select a subset of elements that corresponds to
#a matrix, R will return a matrix object; if you select a subset that corresponds to only
#a vector, R will return a vector object. To disable this behavior, you can use the
#drop=FALSE option:
  
class(a[1,1,])
class(a[1,1,1])
class(a[1,1,1,drop=FALSE])

class(a[1,,])
class(a[1:2,1:2,1:2])
#assigning names to rows and columns
names1<-c("marks1","marks2","marks3")
names2<-c("value1","value2","value3","value4")
array1<-array(c(vector1,vector2),dim=c(4,3),dimnames = list(names2,names1))
array1
length(array1)
#*-------*---------*-------------
v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
v3<-array(c(v1,v2),dim=c(3,3,4))
v3
col.name<-c("c1","c2","c3")
row.name<-c("r1","r2","r3")
mat.name<-c("mat1","mat2")
v3<-array(c(v1,v2),dim=c(3,3,2),dimnames = list(row.name,col.name,mat.name))
v3
#arrays
#access the rows and column through names
v3[,"c2",]
v3["r3",,]
#*----*----*-------*-----------
#construct an array
a <- array(1:12,dim=c(3,4))
a
#Now, let’s define a vector with the same contents:
b<-1:12
b
#You can use R’s bracket notation to refer to elements in a as a two-dimensional array,
#but you can’t refer to elements in b as a two-dimensional array, because b doesn’t
#have any dimensions assigned:
a[2,2]#works
b[2,2]#error incorrect number of dimensions
#use operator
a==b#an array with the dimensions of a, where each cell shows
#the results of the comparison
# all.equal that compares
#the data and attributes of two objects to show if they’re “nearly” equal, a
all.equal(a,b)
#By assigning a dimension attribute to b, b is transformed into an array
dim(b) <- c(3,4)
b
b[2,2]
all.equal(a,b)
#To show the set of objects available in the current environment
objects()#same as that of ls(), output is same
#array addition
a <- array(1:12,dim=c(3,4))
a
b<-array(5:17,dim=c(3,4))
b
#array addition
a+b
a*b
