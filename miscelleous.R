x <- c("a","b","c","d","e")
y <- c("A","B","C","D","E")
paste(x,y)
#By default, values are separated by a space; you can specify another separator (or
#none at all) with the sep argument:
paste(x,y,sep="-")
paste(x,y,sep="-",collapse="#")
v <- c(11, 12, 13, 15, 14)
order(v)
#We can return a sorted version of v using an indexing operator:
v[order(v)]
