# valid strings
string = "single ' between double"
print(string)

string = 'single \' between single'
print(string)

string = 'double " between single'
print(string)

string = "double \" between double"
print(string)

cat("single quotes \"People\'s \" in between double")

# paste function 
print(paste("Always","fine",sep = "*"))
cat(paste("hello sret","how are you","I am doing good",sep = "-",collapse = ""))
cat(paste(c("hello"," sret"),c("how"," are ","you"),"I am doing good",collapse = ""))
cat('\n\n')

# inbuilt functions

# install.packages('stringr')

library(stringr) # import library

print(str_length("Hellohow\n are\t you?"))
print(nchar("he****l'lo")) # inbuilt function
cat('\n')

# acessing part of the string

string = "Learn R program"
print(substr(string,2,5)) # slice string

string = "Learn R program"
len = nchar(string)
print(substring(string,len,len))

# substring vs substr

string = "Learn R program"
print(substring(string,4))
# print(substr(string,-1))
cat('\n\n')

# negative indexing

string = "Learn R program"
print(str_sub(string,-7,-4))

# upper and lower case

print(toupper(string))
print(tolower(string))
print(casefold(string,upper=TRUE))
print(casefold(string,upper=FALSE))

