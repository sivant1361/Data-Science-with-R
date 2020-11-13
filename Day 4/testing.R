ST='NAME: Maria /COUNTRY:uruguay /EMAIL: mariaUY@gmail.com'
fn<-function(ST){
    d= unlist(strsplit(ST,"/"))
    df= unlist(strsplit(d,":"))
    return(matrix(df,,2,byrow=TRUE))
}

print(fn(ST))
