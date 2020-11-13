# example 

colors = c('yellow','green','red','blue','gold','silver')
val = switch(5,'yellow','green','red','blue','gold','silver')
# print(val)

a = as.integer(readline("Enter number 1  : "))
b = as.integer(readline("Enter number 2 : "))
option = readline("Menu \n1. add\n2. subtract\n3. multiply\n4. divide\nEnter your choice : ")
val = switch(
    option,
    'add' = a+b,
    'subtract' = a-b,
    'multiply' = a*b,
    'divide' = a/b,
    option
)
print(val)
