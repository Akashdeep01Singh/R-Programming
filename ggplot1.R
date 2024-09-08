library(ggplot2)

# Create Data
data <- data.frame(
  group=LETTERS[1:5],
  value=c(13,7,9,21,2)
)

# Basic piechart
pi<-ggplot(data, aes(x="range", y=value, fill=group)) +
  geom_bar(stat="identity") +
  coord_polar("y",start=0)+theme_void() # remove background, grid, numeric labels
pi
#The function coord_polar() is used to produce a
#pie chart, which is just a stacked bar chart in
#polar coordinates.
## use brewer color palettes
pi+ scale_fill_brewer(palette="Dark2")
pi + scale_fill_brewer(palette="Blues")+
  theme_minimal()
pi+ scale_fill_grey()+theme_minimal()
