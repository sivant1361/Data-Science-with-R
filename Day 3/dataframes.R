df = data.frame(data("iris"))

print(nrow(iris))
print(head(iris))
print(table(iris$Species))
print(tail(sort(table(iris$Sepal.Length)),10))
cat('\n')

# Find rows with Sepal.Length greater than 7

values <- iris$Sepal.Length>7 # gives us TRUE or FALSE matrix with the same dimensions of the dataframe
print(head(values,20))
cat('\n')

filtered_data = iris[values,]
# filtered_data = iris[iris$Sepal.Length>7,]
print(tail(filtered_data))
cat('\n')

# Group by Species setosa

filtered_data = iris[iris$Species == 'setosa',]
print(head(filtered_data,5))
cat('\n')

# Order by Sepal.Width

filtered_data = iris[order(iris$Sepal.Width), c("Sepal.Length","Species")]
print(head(filtered_data,5))
cat('\n')

# Find rows with Sepal.Length greater than 7 and group by Species setosa

filtered_data = iris[iris$Species == 'setosa' & iris$Sepal.Length>5.5,]
filtered_data = iris[iris$Species == 'setosa' | iris$Sepal.Length>7,]
print(tail(filtered_data,10))
cat('\n')

# skip all NA rows

na.omit(data)