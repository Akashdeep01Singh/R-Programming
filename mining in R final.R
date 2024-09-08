#text mining:is the process of deriving meaningful info 
#from NLP
#millions of data is produced and out of all, 
#21% data is structure,rest is unstructured data
#how to analyse your data correctly
#only way to add value to your business is to extract 
#meaning information from all the data we have
#where it is used:
#autocomplete,spam detection,predicting typing,spell checker
#NLP is a part of computer science and AI which deals with
#human language
#steps:
#Importing data->create a corpus(structured data set(collec of doc))
#->pre-processing(remove tags,
#stop words(common used words),punctuations,numbers,whitespaces,stemming)->
#create Document term matrix(frequency of word occuring in doc 
#->text analysis(Word frequency correlation)->
#text visualistaion(word cloud,histo)
install.packages('tm')
install.packages("SnowballC")
install.packages("wordcloud")
library(tm)
library("SnowballC") 
library("wordcloud") 
library("RColorBrewer") 
txt<-read.csv(file.choose(),header=TRUE)
corp<-iconv(txt$sentence)
corp<-Corpus(VectorSource(corp)) 
inspect(corp[1:5])

#start preprocessing
#text cleaning (convert to lowercase)
corp<-tm_map(corp,content_transformer(tolower))
inspect(corp[1:5])
#remove numbers
corp<-tm_map(corp,removeNumbers)
inspect(corp[1:5])
#remove stop words(common english words)
corp<-tm_map(corp,removeWords,stopwords("english"))
inspect(corp[1:5])
#remove punctuations
corp<-tm_map(corp,removePunctuation)
inspect(corp[1:5])
#remove extra white spaces
corp<-tm_map(corp,stripWhitespace)
inspect(corp[1:5])
#stemming text
corp<-tm_map(corp,stemDocument)
inspect(corp[1:5])
#remove additional stopwords
corp<-tm_map(corp,removeWords,c("get","told","took","gave","can"))
inspect(corp[1:5])
#create TDM
corp<-TermDocumentMatrix(corp)
corp
corp<-as.matrix(corp)
corp
srt<-sort(rowSums(corp))
srt
d<-data.frame(word=names(srt),freq=srt)
View(d)
wordcloud(d$word,d$freq,random.order=FALSE,rot.per=0.6,scale=c(4,.5),min.freq = 1,  
          max.words=200,
           colors=brewer.pal(5,"Dark2"))
