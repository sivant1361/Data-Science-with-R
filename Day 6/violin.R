# Convert the variable dose from a numeric to a factor variable
ToothGrowth$dose <- as.factor(ToothGrowth$dose)
head(ToothGrowth) 

library(ggplot2)
# Basic violin plot
p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_violin()
print(p)
# Rotate the violin plot using coord_flip()
p + coord_flip()
# Set trim argument to FALSE
ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_violin(trim=FALSE)
#Choose which items to display :
p + scale_x_discrete(limits=c("0.5", "2"))

#Add summary statistics on a violin plot
#The function stat_summary() can be used to add mean/median points and more on a violin plot


# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", shape=23, size=2)
# violin plot with median points
p + stat_summary(fun.y=median, geom="point", size=2, color="red")

#Add median and quartile
#A solution is to use the function geom_boxplot 

p + geom_boxplot(width=0.1)

#Add mean and standard deviation
#The function mean_sdl is used. mean_sdl computes the mean plus or minus a constant times the standard deviation.

#In the R code below, the constant is specified using the argument mult (mult = 1). By default mult = 2.
#The mean +/- SD can be added as a crossbar or a pointrange :


# p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + 
#   geom_violin(trim=FALSE)
# p + stat_summary(fun.data="mean_sdl", mult=1, 
#                  geom="crossbar", width=0.2 )
# p + stat_summary(fun.data=mean_sdl, mult=1, 
#                  geom="pointrange", color="red")

# Function to produce summary statistics (mean and +/- sd)
data_summary <- function(x) {
  m <- mean(x)
  ymin <- m-sd(x)
  ymax <- m+sd(x)
  return(c(y=m,ymin=ymin,ymax=ymax))
}

p + stat_summary(fun.data=data_summary)

#Violin plot with dots
#Dots (or points) can be added to a violin plot using the functions geom_dotplot() or geom_jitter() :

# violin plot with dot plot
p + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)


# violin plot with jittered points
# 0.2 : degree of jitter in x direction

p + geom_jitter(shape=16, position=position_jitter(0.2))

# Change violin plot line colors by groups
p<-ggplot(ToothGrowth, aes(x=dose, y=len, color=dose)) +
  geom_violin(trim=FALSE)
print(p)


#It is also possible to change manually violin plot line colors using the functions :
  
 # scale_color_manual() : to use custom colors
#scale_color_brewer() : to use color palettes from RColorBrewer package
#scale_color_grey() : to use grey color palettes

# Use custom color palettes
p+scale_color_manual(values=c("#999999", "#E69F00", "#56B4E9"))
# Use brewer color palettes
p+scale_color_brewer(palette="Dark2")
# Use grey scale
p + scale_color_grey() + theme_classic()

#Change violin plot fill colors
#In the R code below, the fill colors of the violin plot are automatically controlled by the levels of dose :

# Use single color
ggplot(ToothGrowth, aes(x=dose, y=len)) +
  geom_violin(trim=FALSE, fill='red', color="darkred")+
  geom_boxplot(width=0.1) + theme_minimal()
# Change violin plot colors by groups
p<-ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) +
  geom_violin(trim=FALSE)

#changing legend position
p + theme(legend.position="top")
p + theme(legend.position="bottom")
p + theme(legend.position="none")
print(p)