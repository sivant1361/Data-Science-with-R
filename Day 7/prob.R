# A probability distribution describes how the values of a random variable is distributed

# Binomial , poisson , continuous, exponential, normal, chi-squared, t distribution, f distribution

# Binomial distribution

# The binomial distribution is a discrete probability distribution. It describes the outcome of n independent trials in an experiment.

# 12 MCQ question, each have 5 options. 
# probability of getting 4 or less correct answer, student attends all answers randomply

# val = dbinom(4,size=12,prob=0.2)
# print(val)
# cat('\n')

val = pbinom(4,size=12,prob=0.2)
print(val)
cat('\n')

# poisson distribution

# The Poisson distribution is the probability distribution of independent event occurrences in an interval. 

val = ppois(16,lambda=12)
print(val)
cat('\n')

val = ppois(16,lambda=12,lower=FALSE)
print(val)
cat('\n')

# continuous distribution

# The continuous uniform distribution is the probability distribution of random number selection from the continuous interval between a and b.

# 10 random numbers

val = runif(10,1,3)
print(val)
cat('\n')

# exponential distribution ( randomly occuring independent event )

# The exponential distribution describes the arrival time of a randomly recurring independent event sequence.

# mean checkout time for a is 3 , find probability of the customer checkout by the cashier is less than 2  minutes

val = pexp(2,rate=1/3)
print(val)
cat('\n')

# normal distribution

# The normal distribution is defined by the following probability density function, where μ is the population mean and σ2 is the variance.

# student mark > 84% mean = 72 and std = 15.2

print(pnorm(84,mean = 72,sd=15.2,lower=FALSE))
cat('\n')

#  chi-square

# statistical significant difference wrt to expected frequency and observed frequency

# 95% of the chi-square distribution with df = 7

print(qchisq(0.95,df=7))

# t distribution

# find the 2.5th  and 97 th distribution with degree of freedom is 5

print(qt(c(0.025,0.97),df=5))

# f distribution

print(qf(0.95,2,18))

