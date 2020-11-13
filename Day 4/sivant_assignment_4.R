# question 1 

library(readr)
print(dir(system.file("extdata", package = "readr")))
cat('\n')

# question 2

df <- read_csv(readr_example('mtcars.csv'))
print(dim(df))
cat('\n')

# question 3

df <- read.csv(readr_example('mtcars.csv'),nrows=10)
print(df)
cat('\n')