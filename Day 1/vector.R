a = c(1,3,0,6,2,0,0,1) # creating a vector
print(a)

print(typeof(a))
print(class(a))

b = matrix(data = a, nrow = 2, ncol = 4, )
print(b)

b = matrix(data = a, nrow = 2, ncol = 4, byrow = TRUE) # creating a matrix row wise
print(b)

b = matrix(data = a, nrow = 2, ncol = 4, byrow = TRUE, dimname = list(c('row1', 'row2'),c('A','B','C','D')))
print(b)

# display first element
print(b[1,1])

# display first row
print(b[1,])

# transpose
print(t(b))

# access data by dimname
print(b['row1','D'])