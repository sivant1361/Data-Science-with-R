library(e1071)

v = c(12,13,54,56,25)
print(kurtosis(v))
print(skewness(v))

# measurement = c(2,2,3,1,6,11,8,3,2,2)
measurement = c(2*20,2*25,3*30,8*35,11*40,6*45,1*50,3*55,2*60,2*65)
# measurement = c(2,2,3,8,11,6,1,3,2,2)

print(kurtosis(measurement))
print(skewness(measurement))

set.seed(20)
md1=rnorm(500,6)
md2=rnorm(500,77)
md3=runif(500)
mydata=data.frame(md1,md2,md3)
mydata
m=as.matrix(mydata)

myts<-ts(m,start=c(1980,5),frequency=12)
plot(myts,type="l",col="red",main="Multiple time series")