library(e1071)

# data summarization

# symmetric skew

data=read.csv('D:\\cw\\2nd year\\Data Science with R\\CW\\Day 6\\income.csv')
print(skewness(data$amount))
plot(density(data$amount),main="Symmetric skew")
print(kurtosis(data$amount))
cat('\n')

# negative skew

data=read.csv('D:\\cw\\2nd year\\Data Science with R\\CW\\Day 6\\mark.csv')
print(skewness(data$mark))
plot(density(data$mark),main="Negative skew")
print(kurtosis(data$mark))
cat('\n')

# positive skew

data=read.csv('D:\\cw\\2nd year\\Data Science with R\\CW\\Day 6\\height.csv')
print(skewness(data$height))
plot(density(data$height),main="Positive skew")
print(kurtosis(data$height))
cat('\n')

# kurtosis <3 play, >lapto , =3 platy