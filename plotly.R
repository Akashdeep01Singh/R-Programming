#plotly -when to use
#graphs presented in a digital/online format
#you want user to interact with the graph
#you need more customizabilty than ggplot allows
#want to render graphics in a higher resolution'
#collaborating with others accross languages(python,bash etc)
#building unusual chart type(treemaps,sunburst etc)
#Features-tooltip "hover" info
#zooming in the graphs
#user can export graphs as an image
#scatter plot with plotly
library(plotly)
View(mtcars)
df<-mtcars
df$name<-row.names(mtcars)
plot_ly(data=df,x=~cyl,y=~disp)
plot_ly(data=df,x=~cyl,y=~disp,color=~factor(cyl))#different color for different cyliner value
plot_ly(data=df,x=~cyl,y=~disp,color=~factor(cyl),text=~name)
#--------------------------------------------------
#histogram
attach(iris)
hist<-plot_ly(x=Sepal.Length,type='histogram')
layout(hist,title="iris dataset",
       xaxis=list(title="Sepal.Length"),
       yaxis=list(title="Count"))
#-----------------------------------------------
fig<-plot_ly(x=c("beverage","vegetable","dairy"),
        y=c(20,14,25),
        type="bar",
        color="orange")
fig
library(dplyr)
fig%>%layout(title="Sales by parts",
             xaxis=list(title="parts"),
             yaxis=list(title="number_of_sold_product"))
#-----------------------------------------------
Parts<-c("beverage","vegetable","dairy")
Sales_2019<-c(20,14,23)
Sales_2020<-c(12,18,29)
df<-data.frame(Parts,Sales_2019,Sales_2020)
fig<-plot_ly(data=df,x=~Parts,y=~Sales_2019,type="bar",name="2019 sales")
fig<-fig%>%add_trace(y=~Sales_2020,name="2020 Sales")
#add_trace()-used to specify second argument of y-axis
#trace in plotly is a layer of data that is plotted on agraph
fig<-fig%>%layout(title="2019 vs 2020",
             xaxis=list(title="Parts"),
             yaxis=list(title="Number_of_Sales"),
             barmode="group")
fig
#barmode=group means two consecutive bars correspond to 
#beverage,vegetable,dairy
#barmode=stack

fig<-fig%>%layout(title="2019 vs 2020",
                  xaxis=list(title="Parts"),
                  yaxis=list(title="Number_of_Sales"),
                  barmode="stack")
fig
