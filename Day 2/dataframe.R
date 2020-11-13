# defing colums of the dataframe
name = c("Siva","King","Starr")
age = c(19,20,18)
passion = c("AI & ML","Web development","IOT")

# creating a dataframe
df = data.frame(name, age, passion,stringsAsFactors=FALSE)
df_new = data.frame(name=c("iva","ing","tarr"), age=c(19,20,18), passion=c("ML","development","OT"))
print(df)

# summary of the data frame
print(summary(df))

# Access specific column
cat('\n',df$name,'\n\n')

# Display internal structure of r object
str(df)
cat('\n')

# join two df WRT to column
df_cbind = cbind(df,df_new)
print(df_cbind)
cat('\n')

# join two df WRT to row
df_rbind = rbind(df,df_new)
print(df_rbind)
cat('\n')

# delete column in a dataframe
df_subset=subset(df, select = -c(passion))
print(df_subset)
cat('\n')

# delete row in a dataframe
df_row=df_rbind[-c(3,4),]
print(df_row)
cat('\n')

# slicing a dataframe
df_row=df_rbind[-c(3,4),c('age','name')]
print(df_row)
cat('\n')

# Changing column name
college = data.frame(
    name = c("A1","B2","C3","D4"),
    score = c(95,85,79,64),
    attempt = c(NA,1,NA,3),
    qualify = c('yes','yes','yes','no')
)

colnames(college)[which(names(college) == 'score')] = 'mark'
print(college)
cat('\n')

# alter NA
college[is.na(college)] = 0
print(college)
cat('\n')

# bug buster doubt
exam=data.frame(
std=c("stv","tvs","vts"),
score=c(200,1000,300)
)
colnames(exam)[which(names(exam)=="std")]="std_name"
print(exam)
cat('\n')

# Aparna's code
df= data.frame(  
name=c("Jim","Cooper","Joe"),
score=c(10,90,NA),
attempts=c(1,3,NA),
qualify=c('yes',"no","yes")
)

# skip all NA rows

df = na.omit(df)

print(df)

#df=data.frame(name,score,attempts,qualify)
# print(df)
# df[is.na(df)] = 0
# print("altered NA")
# print(df)
# print(typeof(df))
# print(class(df))    