# install.packages('mlbench')
# install.packages("corrplot")

library(mlbench)
library(corrplot)
library(ggplot2)
library(caTools)

# question 1

data('BostonHousing')
data = BostonHousing
print(str(data))

# question 2

plot(density(data$medv),type='h',col='pink',main="Boston Housing")

# question 3

mydata <- data[data$medv, c("crim","rm","age","rad","tax","lstat")]
head(mydata)

cor<-round(cor(mydata),2)
head(cor)

print(corrplot(cor))

# question 4

s = sample.split(data,0.75)
train = data[s,]
test = data[s==FALSE,]

print(nrow(train))
print(nrow(test))

# question 5

linearModel = lm(medv~crim+rm+tax+lstat ,data=data)

pred = predict(linearModel,test)
print(head(pred))

# question 6

sum = summary(linearModel)
print(sum$r.squared)

# question 7

act_vs_pred = data.frame(actual=test$medv,predicted=pred)

# question 8

plot(act_vs_pred,type='p',col=c('black','red'))