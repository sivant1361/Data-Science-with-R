library(ggplot2)
library(ggplot2movies)
library(wordcloud)
library(plotrix)

# bar plot

count=head(movies$rating,40)
count = table(count)
barplot(count,main="Bar Plot",xlab = "Rating",ylab= "Frequency",col=c("pink"))

# double bar plot

count = table(head(movies$r9,100),head(movies$r10,100))
barplot(count,main="Double Bar Plot",beside = TRUE,xlab = "Rating",ylab= "Frequency",col=c("pink","light yellow"))

# pie chart

slices = movies$length[130:133]
pct = round((slices/sum(slices))*100)
labs = movies$title[130:133]
lbl = paste(labs,pct,"%",sep=" ")
pie(slices,lbl,main="Pie Chart",col = c("grey","pink","light blue","light yellow"))

# 3D Pie Chart

pie3D(slices,labels = paste(pct,'%'),main="Pie Chart 3D",col = c("grey","pink","light blue","light yellow"))

# bar plot

hist(movies$year,col = "pink", main="Movies Frequency", xlab="Year")

# density plot

data=density(movies$year)
plot(data,main="Movies Frequency", xlab="Year")
polygon(data,col='light yellow',border="grey")

# line plot

rating = head(movies$rating,13)
year = head(movies$year,13)
plot(y=rating,x=year,type="b",main="Line Graph")

# scatter plot

rating = head(movies$rating,30)
year = head(movies$year,30)
plot(y=rating,x=year,main="Scatter Plot", col = rep(1:2, each = 20), pch = 19)
legend("bottomright", legend = paste("Group", 1:2), col = 1:2, pch = 19, bty = "n")

# wordcloud

wordcloud(words = movies$title,freq = movies$length, min.freq = 2,max.words = 35,textStemming = TRUE,random.order = FALSE, colors=brewer.pal(8, "Dark2"))

# # scatter plot using ggplot

# pl<-ggplot(data=head(movies,100),aes(x=rating,y=year))
# pl<-pl+geom_point()
# print(pl)

# # histogram

# mov<-ggplot(data=movies,aes(x=rating))
# mov<-mov+geom_histogram(bins = 20,color = "black", fill="light yellow",alpha=1)+xlab("Movie Rating")+ylab("Movie Count")+ggtitle("Movies Plot")
# print(mov)

