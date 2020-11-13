library(stringr)

# Regular expressions

text = c("Do you","vote","and","know","how","to","vote","?")
print(grep('vote',text))
print(grepl('vote',text))
cat('\n')

text = "heloow1234 are you have number"
print(grep('2',text))
print(grepl('o',text))
print(grepl('u',text))
print(grep('123',text))
print(grepl('[5-9]',text))
print(nchar(text))

# check presence of a number in the code

text = "heloow1234 are you have number"
print(grepl('[0-9]',text))

grep_function = function(expression, vector){
    return (grepl(expression,vector))
}
print(grep_function('[0-9]','I am 19 years old'))
cat('\n')

# sub and gsubs

sentence = c('I like maths','you like apples')
print(sub(pattern = 'you', replacement = 'I',sentence))

print(sub(pattern = ' ', replacement = '_',sentence))
print(gsub(pattern = ' ', replacement = '_',sentence))

a = c(1,2,3)
b = c(3,4,5) 
print(cbind(a,b,c(7,8,9)))
print(rbind(a,b,c(7,8,9)))