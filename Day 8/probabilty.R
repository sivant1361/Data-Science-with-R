# question 1

print(dbinom(7,size=10,prob=0.5)*100)

# question 2

print(dbinom(2,size=3,prob=(3/13))*100)
# val = 3*((3/13)^2)*((10/13)^1) # using formula

# question 3

n = 50  # (no of questions)
p = 0.2 # probability for answer is right 

# number of correct responses
# print(n*p)

print(qbinom(0.5,n,p))

# question 4

# number of phones that need repairs
p_pval = pnorm(11000,mean=10000,sd=500,lower.tail=FALSE)
num_phones = round(p_pval * 10000)
print(num_phones)