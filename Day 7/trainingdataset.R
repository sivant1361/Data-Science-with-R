library(caTools)

# sales = read("sal.csv")
data = head(iris,60)

s = sample.split(data,SplitRatio = 0.7)
print(s)
train = data[s==TRUE,]
test = data[s==FALSE,]

print(nrow(train))
print(nrow(test))

model = lm(Sepal.Length~.,train)
print(model)

pred = predict(model,test)

print(plot(pred,test$Sepal.Length,col=c("red","black"),type='p'))