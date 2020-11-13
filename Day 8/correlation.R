# coorealtion
# 0.4 < week, 0.5 = strong, 0.8 strong

hours = c(8,11,3,6,14,9,2,0,7,13,10,4,9)
marks = c(82,94,70,75,98,80,68,53,76,87,89,83,72)
result = cor.test(hours,marks)

print(result)

# install.packages('trees')

# print(colnames(mtcars))

result = cor.test(mtcars$mpg, mtcars$cyl)
print(result)

result = cor.test(mtcars$mpg, mtcars$vs)
print(result)

data = read.csv('data.csv')
print(data)
result = cor.test(data$Hours, data$Mark)
print(result)
