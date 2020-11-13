# question 1

text1 = "Hello 123"
my_pattern = '[[:upper:][:digit:]]'
print(grepl(my_pattern,text1))

# question 2

text2 = "Hello 123"
print(sub(my_pattern,'is not',text1))

# question 3

my_pattern <- "\\d{4}$"
string_pos4 <- gregexpr(my_pattern,text2)
print(string_pos4)
print(string_pos4[[1]][1])

# question 4

# sd=5 since var =25

# lies between 16.2 and 27.5
res = pnorm(27.5,mean=22,sd=5)-pnorm(16.2,mean=22,sd=5)
print(res)

# greater than 29
res = pnorm(29,mean=22,sd=5)
print(res)

# less than 17
res = pnorm(17,mean=22,sd=5,lower.tail=FALSE)
print(res)

# less than 15 and greater than 25

res = pnorm(15,mean=22,sd=5)+pnorm(25,mean=22,sd=5,lower.tail=FALSE)
print(res)

# question 5

# (i)20,25 or 30 times

res = dbinom(20,60,prob=0.5) + dbinom(25,60,prob=0.5) +dbinom(30,60,prob=0.5)
print(res)

# (ii)less than 20 times

res = pbinom(19,60,prob=0.5)
print(res)

# (iii)between 20 and 30 times 

res = pbinom(30,60,prob=0.5) - pbinom(20,60,prob=0.5)
print(res)