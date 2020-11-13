# install.packages('cluster')
# install.packages('factoextra')

# library(cluster)
# library(factoextra)
# library(ggplot2)

# data = mtcars
# print(head(data))

# data = scale(data)
# print(head(data))

# val = fviz_nbclust(data, kmeans, method = "wss") + geom_vline(xintercept = 5, linetype =3)+ labs(subtitle = "Elbow method")

# print(val)
# result = kmeans(data, 5, nstart=20)

# print(result)

# print(fviz_cluster(result,data))

library(cluster)
library(factoextra)
library(ggplot2)
library(ggplot2movies)

data = mtcars
print(head(data))

data = scale(data)
print(head(data))

val = fviz_nbclust(data, kmeans, method = "wss") + geom_vline(xintercept = 5, linetype =3)+ labs(subtitle = "Elbow method")

print(val)
result = kmeans(data, 5, nstart=20)

print(result)

print(fviz_cluster(result,data))
