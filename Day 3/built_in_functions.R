# sequence

cat(seq(1, 13, by=2),'\n\n')

# sort

val = c('s','I','v','a','A','n','T')

cat(sort(val),'\n')
cat(sort(val,decreasing=TRUE),'\n\n')

# append

v1 = 1:10
v2 = 2:20
v3 = append(v1,v2)
cat(v3,'\n\n')

# rev

print(rev(val))

# 'is' functions

vector = c(1,2,NA,4)

print(is.integer(vector))
print(is.numeric(vector))
print(is.matrix(vector))
print(is.vector(vector))
print(is.na(vector))
cat('\n')

matrix = as.matrix(vector)
print(class(matrix))

dataframe = as.data.frame(vector)
print(class(dataframe))

list = as.list(vector)
print(class(list))
