pos_or_neg = function(val){
    if(val>=0)
        return ('POSITIVE')
    else
        return ('NEGATIVE')
}

print(paste("10 -> ",pos_or_neg(10)))

even_or_odd = function(val){
    if(val%%2==0)
        return ('EVEN')
    else
        return ('ODD')
}

print(paste("13 -> ",even_or_odd(13)))
# print(even_or_odd())

# Default Arguments

hello <- function(name = 'buddy',k,age=18){
    print(paste("Hello ",name,age))
}

hello()

hello <- function(name = 'buddy',age=18){
    if(nchar(name)>0 && !is.na(age))
        print(paste("Hello",name,",you are",age,"years old!"))
    else
        print(paste("Hello buddy,you age is unknown!"))
}

# hello(readline("Enter you name : "),as.integer(readline("Enter your age : ")))

# square of a sequnece

square = function(num=1){
    print(seq(1,num)^2)
}

square()
# square(as.integer(readline("Enter a number : ")))

# try new

new = function(a,b,c){
    result = a*b+c
    print(result)
}

new(5,3,11)

# Scope of a variable

g = "I am global var g"
l = "I am global var l"

func <- function(){
    print(l)
    g <<- "I am local var g"
    print(g)
}

func()
print(g)

# builtin function

values = seq(32,44)
print(seq(32,44))
print(mean(25:82))
print(sum(41:68))