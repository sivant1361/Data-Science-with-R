# income symmetric

v=c()
k=1
flag = 1

for (range in seq(0,100,by=10)) {
    val=unlist(round(runif(k*5,range,range+10),2))
    print(length(val))
    v=c(v,val)
    if(k<5 && flag==1){
        k=k+1
    }else if(k==5 && flag==1){
        k=k+1
        flag=0
    }else{
        k=k-1
    }
}
print(v)
write.csv(data.frame(amount = v),'income.csv')

# mark skewed left

v=c()
k=1
flag = 1

for (range in seq(0,90,by=10)) {
    val=unlist(round(runif(k*5,range,range+10),2))
    print(length(val))
    v=c(v,val)
    if(k<7 && flag==1){
        k=k+1
    }else if(k==7 && flag==1){
        k=k+1
        flag=0
    }else{
        k=k-2
    }
}
print(v)

write.csv(data.frame(mark = v),'mark.csv')

# height skewed right

v=c()
k=1
flag = 1

for (range in seq(150,190,by=3)) {
    val=unlist(round(runif(k*3,range,range+3),2))
    print(length(val))
    v=c(v,val)
    if(k<7 && flag==1){
        k=k+2
    }else if(k==7 && flag==1){
        k=k+2
        flag=0
    }else{
        k=k-1
    }
}
print(v)

write.csv(data.frame(height = v),'height.csv')