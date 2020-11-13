install.packages('readxl')
library(readxl)

data = read_excel("employee.xlsx", sheet='Sheet1')
print(data)
cat('\n')

print(class(data))
cat('\n')

print(sum(data$Salary))
cat('\n')

print(summary(data))
cat('\n')

write.table(data,"employee.txt",row.names=FALSE)
df = read.table("employee.txt",header=TRUE)
print(df)

# write.table(data,"employee.txt")
# df = read.table("employee.txt")
# print(df)

print("HELLO")
df = read.table("employee.xlsx")
print(df)
