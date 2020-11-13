# question 1

cat("Square root of a number:\n\n")
x = as.integer(readline("Enter a number : "))
if(x>=0){
    print(paste("Square root = ",sqrt(x)))
}else {
   print(NA)
}
cat('\n')

# question 2

cat("\nletters vs LETTERS:\n\n")
print(letters) # lower case constant
print(LETTERS) # upper case constant
cat('\n')

# question 3

cat("\nDisplay values max to min:\n\n")
vector = c(13, 1, 6)
print(sort(vector,decreasing = TRUE))
cat('\n')

# question 4

cat("\nDisplay values greater than mean:\n\n")
values = c(1:10)
mean_value = mean(values)
cat("MEAN : ",mean_value,'\nVALUES GREATER THAN MEAN : ')
for(i in values)
    if(i>mean_value)
        cat(i,' ')
cat('\n')

# question 5

cat("\nDisplay sequence of numbers:\n\n")
for(i in seq(1:3)){
    for(j in seq(i,i+9))
        cat(j,' ')
    cat('\n')
}

# question 6

cat("\nAdd a vector to dataframe:\n\n")
df = data.frame(
    a = c(3, 7, NA, 9),
    b = c(2, NA, 9, 3),
    f = c(5, 2, 5, 6),
    d = c(NA, 3, 4, NA)
)

e = c()

print(df)
cat('\n')

for(i in 1:nrow(df))
    if(is.na(df[i,1])){
        e = c(e,df[i,2])
    }else if (is.na(df[i,2])){
        e = c(e,df[i,4])
    }else{
        e = c(e,df[i,3])
    }

df = cbind(df,e)
print(df)
cat('\n')

# question 7

cat("\nDisplay numbers from 0 to 35 except 7:\n\n")
for(i in seq(0,35))
    if (i==7) {
       next
    }else {
        cat(i,' ')
    }
cat('\n')

# question 8

cat("\nTypeof vs class:\n\n")
a = 1L; b = 'a'; c = pi; d = c(1,2,3)
print(typeof(a))
print(typeof(b))
print(typeof(c))
print(typeof(d))

print(class(a))
print(class(b))
print(class(c))
print(class(d))

# question 9

cat("\nRequired, Keyword and Default:\n\n")

# required

square = function(num){
    print(seq(1,num)^2)
}
square(5)
cat('\n')

# keyword

even_or_odd = function(val){
    if(val%%2==0)
        return ('EVEN')
    else
        return ('ODD')
}
print(even_or_odd(val=13))
cat('\n')

# default

hello <- function(name = 'buddy',age=18){
    print(paste("Hello",name,",you are",age,"years old!"))
}
hello()
hello("siva",13)
cat('\n')

# question 10

cat("\nDelete row and column:\n\n")
print(df)
cat('\n')

# delete row

print(df[-c(1,4),])
cat('\n')

# delete column

print(subset(df, select = -c(a,d)))
cat('\n')