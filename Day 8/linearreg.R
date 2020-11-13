# training

height = c(155,160,170,169,178,175,165,181,172,159,183,182)
weight = c(50,52,56,53,61,70,45,85,71,55,64,60)

# lm(dependent~independent)

relation = lm(weight~height)
# print(summary(relation))
# print(relation)

# predict

result = data.frame(height=178)
final = predict(relation,result)
# print(final)

# with marks dataset

data = read.csv('data.csv')
h=data$Hours
m=data$Mark
markModel = lm(m~h)
# print(summary(markModel))

result = data.frame(h=8)
predict = predict(markModel,result)
# print(predict)

# 3 vector
# training

height = c(155,160,170,169,178,175,165,181,172,159,183,182)
weight = c(50,52,56,53,61,70,45,85,71,55,64,60)
age = runif(12,16,24)

# lm(dependent~independent)

relation = lm(weight~height+age)
# print(summary(relation))
# print(relation)

# predict

result = data.frame(height=178,age=19)
final = predict(relation,result)
print(final)

# mouse

weight=c(1.4,2.8,2.4)
size=c(1.2,2.4,3.5)
tail=c(0.9,1,0.8)
relation=lm(size~weight+tail)
result=data.frame(weight=2.5,tail=0.8)
print(predict(relation,result))

# blood

blood = c('O','A','B','O','AB','B','O','B','O','O')
rating = runif(length(blood),4,5)

bloodModel = lm(rating~blood)
result=predict(bloodModel,data.frame(blood='O'))

print(result)