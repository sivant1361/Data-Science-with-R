# if statement

values = sample(1:10, 1)
if(values<=10){
    print(paste(values," is greater than 10"))
}

# if - else statement
a = 1 ; b = 2 ;
if(a>b){
    print(paste(a," is greater than",b))
}else{
    print(paste(b," is greater than",a))
}

# for loop

for(id in 1:10)
    cat(id," ")
cat('\n\n')

# nested loop

val_matrix = matrix(4:29,,2)

for (i in seq(nrow(val_matrix))){
    for (j in seq(ncol(val_matrix))){
        cat(val_matrix[i,j]," ")
    }
    cat('\n')
}
cat('\n')

val_matrix = matrix(1:9,,3)

for (i in seq(nrow(val_matrix))){
    for (j in seq(ncol(val_matrix))){
        cat(val_matrix[i,j]," ")
    }
    cat('\n')
}
cat('\n')

# 4 tables in r

for (i in seq(4,40,4))
cat(i," ")
cat('\n\n')

# print alphabets a to m

for (i in letters[1:13])
cat(i," ")
cat('\n\n')

# nested loop transpose

val_matrix = matrix(4:29,,2)

for (i in seq(ncol(val_matrix))){
    for (j in seq(nrow(val_matrix))){
        cat(val_matrix[j,i]," ")
    }
    cat('\n')
}
cat('\n')

# while loop

x = -5
while(x<=10)
{
    cat(x,' ')
    x=x+1
}
cat('\n\n')

# repeat loop

x = -5
repeat{
    if(x>5)
    break
    cat(x,' ')
    x=x+1
}
cat('\n\n')