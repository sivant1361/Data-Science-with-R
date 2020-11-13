library(caTools)

data = head(mtcars,20)
s = sample.split(data,SplitRatio = 0.7)
train = subset(data,s==TRUE)
test = subset(data,s == FALSE)
m = lm(mpg~.,train)
ypred = predict(m,test)
data = data.frame(ypred,test$mpg)
library(ggplot2)
a =ggplot(test, aes(x = hp, y = mpg)) +
  geom_line() +
  geom_line(aes(y = data$ypred),colour="red")

print(a)