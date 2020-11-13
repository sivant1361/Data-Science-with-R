# install.packages('googleVis')
library(googleVis)

# question 1

dfr=data.frame(name=c("GRE", "ARG", "BRA"),val1=c(20,32,19),val2=c(25,52,12))

# question 2

df = data.frame(name=c('Thompson','Harden','James'),pts=dfr$val1,rbs=dfr$val2)

# question 3

LineC <- gvisLineChart(df)

# question 4

l=gvisLineChart(df,"name",c("pts"))
plot(l)

# question 5

l2=gvisLineChart(df,"name",c("pts","rbs"),
                 options=list(
                  series="[{targetAxisIndex: 0},
                         {targetAxisIndex:1}]",
                   vAxes="[{title:'Pts'}, {title:'Rbs'}]"))
plot(l2)

# question 6

BarC=gvisBarChart(df)
plot(BarC)