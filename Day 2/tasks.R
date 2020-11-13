df = data.frame(
    name = c("King","Starr","Cashew"),
    age = c(18,20,19)
)

add_vectors = function(vector){
    if(length(vector) == nrow(df))
        df <<-cbind(df,data.frame(value=vector))
    print(df)
}

add_vectors(c(90,100,85))
