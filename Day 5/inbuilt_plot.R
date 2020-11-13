# bar plot

count=mtcars$gear
count = table(mtcars$vs,count)
barplot(count,main="Simple Chart",beside = TRUE,xlab = "Improvement",ylab= "Frequency",legend=rownames(count),col=c("pink","gold"))

# pie chart

slices = c(10,20,25,90)
pct = round((slices/sum(slices))*100)
labs = c('A','B','C','D')
lbl = paste(labs,pct,"%",sep=" ")
pie(slices,lbl,main="Pie Chart",col = c("grey","pink","light blue","light yellow"))

# 3D Pie Chart

library(plotrix)

lp<-c(1,2,3,4)
pie3D(slices,labels = lbl,main="Pie Chart",col = c("grey","pink","light blue","light yellow"),explode=1, sector.order = c(2,4),labelpos = lp)

# histogram

hist(mtcars$mpg,col = "light yellow")

# density plot

data=density(mtcars$mpg)
plot(data)
polygon(data,col='light yellow',border="grey")

# line plot

w = c(12,13,15,14,18,19)
# month = c("JAN","FEB","MARCH","APRIL","MAY","JUNE")
month=c(1,2,3,4,5,6)
plot(y=w,x=month,type="b",main="Line Graph")

# word cloud

library(wordcloud)
data = read.csv('D:\\cw\\2nd year\\Data Science with R\\CW\\Day 5\\text.csv',header = TRUE)
wordcloud(words = data$word,freq = data$freq,min.freq = 2,max.words = 100,random.order = FALSE)