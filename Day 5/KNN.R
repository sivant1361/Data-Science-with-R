
df <- data(iris) ##load data
print(head(iris)) ## see the studcture
cat('\n')

##Generate a random number that is 90% of the total number of rows in dataset.
ran <- sample(1:nrow(iris), 0.9 * nrow(iris)) 

##the normalization function is created
nor <-function(x) { (x -min(x))/(max(x)-min(x))   }

##Run nomalization on first 4 coulumns of dataset because they are the predictors
iris_norm <- as.data.frame(lapply(iris[,c(1,2,3,4)], nor))

summary(iris_norm)

##extract training set
iris_train <- iris_norm[ran,] 
iris_test <- iris_norm[-ran,] 
print(head(iris_train))
cat('\n')

iris_target_category <- iris[ran,5]
iris_test_category <- iris[-ran,5]

library(class)
pr <- knn(iris_train,iris_test,cl=iris_target_category,k=13)
print(pr)
cat('\n')

tab <- table(pr,iris_test_category)
print(tab)
cat('\n')

##this function divides the correct predictions by total number of predictions that tell us how accurate teh model is.

accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
print(accuracy(tab))
