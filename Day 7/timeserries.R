# ts(data,start,end,frequency)

# data- vector,matrix or df col
# start-  first observation
# end- last obervation

# 12 => every month in  a year
# 4 => quaters a year from
# 6 => every 10 mins in a hour
# 24*6 = > every 10 mins in a day

a = round(runif(10,100,2000),2)
b = round(runif(10,100,2000),2)

result = ts(matrix(a,b),start(2012,1),frequency=12)
# print(result)
# plot(result,type='h')

plot(density(result),type='h',col='light blue',main="Rainfall pattern ")

# hist(result,ylab="Density",col=c('light yellow','pink','light blue','light green'),main="Rainfall pattern")

# aparna's code

vec=c(1100,699,899,1230,120,420,955,845,566,240,1070,900)
t<-ts(vec,start=c(2012,1),freq=12)
# p=density(t)
# plot(p,col="red",main="density distribution",type='h')

data = read.csv('data.csv')
print(head(data))
result = ts(data,start=c(1995,2),frequency=12)
print(plot(result,main="Retail trade clothing"))
# print(plot(density(result),main="Retail trade clothing"))
print(summary(result))