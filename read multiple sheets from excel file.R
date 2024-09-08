install.packages("xlsx")
library("xlsx")
#syntax
#read.xlsx(file, sheetIndex, header=TRUE, colClasses=NA)
#read.xlsx2(file, sheetIndex, header=TRUE, colClasses="character")

res <- read_excel(file.choose(), 1) # read first sheet

install.packages("readxl")
library("readxl")
my_data <- read_excel("mtcars", sheet = "data")

# Specify sheet by its index
my_data <- read_excel("F:/Datasci/mtcars.xlsx", sheet = 2)

my_data1 <- read_excel(file.choose(),2)
