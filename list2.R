example.list <- list(a=1, b=2,c=3)
example.list(a+b+c)#error
a+b+c #error
#with function The function with evaluates the expression and then returns the result,
#withinfunction makes changes in the object data and then returns data.
with(example.list, a+b+c+d)
within(example.list, e<-a+b+c+d)

