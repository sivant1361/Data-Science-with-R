# question 1

cat("Creation of Matrix:\n\n")
a <- c(9,10,11,12)
b <- c(13,14,15,16)

matrix_4_by_2 <- matrix(data = c(a,b), nrow = 4, ncol =2)
print(matrix_4_by_2)

# question 2

cat("\nGetting input from the user:\n\n")
id = as.numeric(readline(prompt="Enter userID : "))
batch = readline(prompt="Enter batch : ")

cat(id, batch,'\n')

# question 3

cat("\nCreating a dataframe:\n\n")
name = c("Siva","King","Star")
subject = c("AI & ML","Python","IOT")
score = c(19,20,18)
rank = c(2,1,3)

df = data.frame(name, subject, score, rank)
print(df)

# question 4

cat("\nDisplaying summary:\n\n")
print(summary(df))

# question 5

cat("\nDisplaying name column of the dataframe:\n\n")
print(df['name'])

# question 6

cat("\nDisplaying 1st two rows of the dataframe:\n\n")
print(df[1:2,])