library(ggplot2)

print(colnames(iris))

Species=factor(head(iris$Species,200))
Width=head(iris$Sepal.Width,200)
Length=head(iris$Sepal.Length,200)

# histogram
print(qplot(Width,geom="histogram", fill=Species))

# density
print(qplot(Width,geom="density", fill=Species))

# boxplot
print(qplot(Width,Length,geom="boxplot", fill=Species))

# dotplot
print(qplot(Width,geom="dotplot", fill=Species))

# bar
print(qplot(Length,geom="bar", fill=Species))