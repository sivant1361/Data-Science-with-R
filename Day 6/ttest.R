a=c(15.2,15.3,16,15.8,15.6,14.9,15,15.4,15.6,15.7,15.5,15.2,15.5,15.1,15.3,15)
b=c(15.9,15.9,15.2,16.6,15.2,15.8,15.8,16.2,15.6,15.6,15.8,15.5,15.5,15.5,14.9,15.9)

print(length(a))
print(length(b))

val=(t.test(a,b))

# significant values, noraml distribution and comman variance
print(summary(val))