a=c(12,7,11,13,10)
b=c(7,9,8,10,9)

res=t.test(a,b)
print(res)

res=t.test(a,b, alternative="greater")
print(res)

res=t.test(a,b, alternative="less")
print(res)