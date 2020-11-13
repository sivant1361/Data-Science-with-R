# install.packages('ggplot2')

library(ggplot2)
library(ggplot2movies)

# ggplot = > grammar of graphics
# layers = > data, aesthetics, geomentry, facets, statistics, coordinates

# ggplot = (data=mtcars,aes(x,y),goem_point(),facet_grid()+stat_smooth(),coord_cartesian())
# pl<-ggplot(data=mtcars,aes(mpg,hp))
# pl<-pl+geom_point()+facet_grid(cyl~.)+stat_smooth()+coord_cartesian(xlim=c(20,25))
# print(pl)

# mov<-ggplot(data=movies,aes(x=rating))
# mov<-mov+geom_histogram(bins = 20,color = "black", fill="black",alpha=0.25)+xlab("Movie Rating")+ylab("Movie Count")+ggtitle("Movies Plot")
# print(mov)

colnames(mtcars)
colnames(movies)
p <- ggplot(data = head(movies,50),aes(year,length))
p <- p+geom_point()+facet_grid(Documentary~.)+stat_smooth()
print(p)

p <- ggplot(data = head(movies,50),aes(rating))+geom_histogram()+xlab("Rate")
print(p)