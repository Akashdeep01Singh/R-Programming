x <- "I like this! #this, @wheres_my, I like R (v3.2.2) #rrrrrrr2015"

# remove space or tabs
gsub(pattern = "[[:blank:]]", replacement = "", x)


# replace punctuation with whitespace
gsub(pattern = "[[:punct:]]", replacement = " ", x)


# remove alphanumeric characters
gsub(pattern = "[[:alnum:]]", replacement = "", x)

string <- c("I sleep 16 hours\n, a day","I sleep 8 hours\n a day.","You sleep how many\t hours ?")

#remove control characters 
gsub(pattern = "[[:cntrl:]]+",replacement = " ",x = string) 