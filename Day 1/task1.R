data = c(15,15,15,15,40,15,15,15,15,40)
data_array = matrix(data = data, nrow = 2, ncol = 5, byrow = TRUE, dimname=list(c("Python","R"),c("CA1","CA2","CA2","CA4","FA")))
print(data_array)

print("FA:")
print(data_array[,5])
print("R:")
print(data_array[2,])