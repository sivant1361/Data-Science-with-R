# install.packages("dplyr")
library(dplyr)

data = data.frame(Titanic)
print(nrow(data))
print(head(data))
cat('\n')

# total number of passengers

num_of_passengers = summarise(data,num_of_passengers=sum(Freq))
print(num_of_passengers)
cat('\n')

# %>%  is known as chaining or pipling

num_of_passengers = data %>% summarise(num_of_passengers=sum(Freq))

print(num_of_passengers)
cat('\n')

# group by class

num_of_passengers_class = data  %>% 
    group_by(Class) %>% 
    summarise(num_of_passengers=sum(Freq))

print(num_of_passengers_class)
cat('\n')

# select

data_new = data  %>% 
    select(Class,Age,Sex)
print(tail(data_new,3))
cat('\n')

# mutate

data_mutate = data  %>% 
    mutate(Mean_Dev = Freq - mean(Freq))
print(tail(data_mutate))
cat('\n')

# filter

data_filter = data  %>% 
  filter(Class == 'Crew' | Freq > 10) 
print(data_filter)
cat('\n')

# aarange

data_arrange = data  %>% 
    arrange(desc(Freq)) 
print(head(data_arrange,5))
cat('\n')