# analysis of variance

d1 = c(2,3,7,2,6)
d2 = c(10,8,7,5,10)
d3 = c(10,13,14,13,15)
df = data.frame(d1,d2,d3)
# print(df)

stack_group=stack(df)
# print(stack_group)

a_r = aov(values~ind,data=stack_group)
print(a_r)

# class(stack_group)

d1 = c(0,2,3,5,8,10,12)
d2 = c(1,2,3,9,10,10,11)
d3 = c(1,4,5,5,8,9,10)
df = data.frame(d1,d2,d3)
stack_group=stack(df)

a_r = aov(values~ind,data=stack_group)
print(a_r)

print(summary(a_r))
cat('\n')
