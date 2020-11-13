df = read.csv('D:\\cw\\2nd year\\Data Science with R\\CW\\Day 4\\employee1.csv')
print(head(df))
cat('\n')

print(max(df$Salary))
cat('\n')


print(
    subset(df, Salary == max(Salary))
)
cat('\n')

print(
    subset(df, Dept == 'IT')
)
cat('\n')

print(
    subset(df, Dept == 'IT' & Salary>600)
)
cat('\n')

print(
    subset(df, as.Date(Start_date,format='%d-%m-%Y') > as.Date("2014-01-01"))
)
cat('\n')

print(
    subset(df,as.Date(Start_date,format="%d-%m-%Y")>as.Date("2015-01-01",format="%Y-%m-%d"))
)
cat('\n')

write.csv(df,'write.csv', row.names=FALSE)
df_new = read.csv('write.csv')
print(head(df_new))

