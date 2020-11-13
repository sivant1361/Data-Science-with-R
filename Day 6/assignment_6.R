# question 1

# T Test

a=c(3,3,3,12,15,16,17,19,23,24,32)
b=c(20,13,13,20,29,32,23,20,25,15,30)

print(t.test(a,b))
cat('\n')

# question 2

# Anova

d1 = c(0,2,3,5,8,10,12)
d2 = c(1,2,3,9,10,10,11)
d3 = c(1,4,5,5,8,9,10)
df = data.frame(d1,d2,d3)
stack_group=stack(df)

a_r = aov(values~ind,data=stack_group)
print(a_r)
cat('\n')

# question 3

library(ggplot2)

p <- ggplot(head(iris,130), aes(x=Petal.Length, y=Sepal.Width,fill=factor(Species))) + 
  geom_violin()
print(p)

# print(nrow(iris))

# question 4

# print(colnames(iris))

Species=factor(head(iris$Species,200))
Width=head(iris$Sepal.Width,200)
Length=head(iris$Sepal.Length,200)

# histogram
print(qplot(Width,geom="histogram", fill=Species))

# density
print(qplot(Width,geom="density", fill=Species))

# boxplot
print(qplot(Width,Length,geom="boxplot", fill=Species))

# dotplot
print(qplot(Width,Length,geom="dotplot", fill=Species))

# bar
print(qplot(Length,geom="bar", fill=Species))

# question 5

library(e1071)
library(ggplot2movies)
print(colnames(movies))
cat('\n')

# Right Skew

duration = head(movies$r1,20)
print(skewness(duration))
print(kurtosis(duration))
plot(density(duration),main="Right Skew")
cat('\n')

# Left Skew

duration = head(movies$r3,10)
print(skewness(duration))
print(kurtosis(duration))
plot(density(duration),main="Left Skew")
cat('\n')

# Normal Distribution

data=read.csv('D:\\cw\\2nd year\\Data Science with R\\CW\\Day 6\\income.csv')
print(skewness(data$amount))
plot(density(data$amount), main="Normal Distribution")
print(kurtosis(data$amount))
cat('\n')