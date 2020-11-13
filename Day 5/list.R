# S3 class

s=list(name='siva',age=19,GPA=4.9)
class(s)='student'

print(s$name)
print(s)
print(class(s))
cat('\n')

# S4 class

setClass('student',slots=list(name="character",age="numeric",GPA="numeric"))
s = new('student',name="King",age=20,GPA=4)
print(s)
cat('\n')
print(class(s))
print(isS4(s))
cat('\n')

# Reference class

student<-setRefClass('students',fields=list(name="character",age="numeric",GPA="numeric"))
s = student(name="Cashew",age=18,GPA=5)
print(s)
cat('\n')
