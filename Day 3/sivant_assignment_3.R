# question 1

cat('\nVector to String\n\n')
to_string = function(vector){
    if (length(vector)==0){
      return("NA")
    }
    else if(length(vector)<2){
      return(as.character(vector))
    }else{
        value = paste(vector[1:length(vector)-1],collapse=', ')
        return(paste(value,'and',vector[length(vector)]))
    }
}

print(to_string(c()))
print(to_string(c(1)))
print(to_string(c(1,2)))
print(to_string(c(1,2,3,4)))
cat('\n')

# question 2

cat('\nSwap Code\n\n')
swap_code = function(df,a,b){
  
  if(a<=nrow(df) && b<=nrow(df)){
    temp = df[a,'Code'];
    df[a,'Code']=df[b,'Code']
    df[b,'Code']=temp
    print(df)
  }
}

Id=c(1:10)
Age=c(14,12,15,10,23,21,41,56,78,12)
Sex=c('F','M','M','F','M','F','M','M','F','M')
Code=letters[1:10]
df=data.frame(Id,Age,Sex,Code)

print(df)
cat('\n')

swap_code(df,as.integer(readline("Enter index 1 : ")),as.integer(readline("Enter index 2 : ")))
cat('\n')

# question 3

cat('\nSort and Duplicate\n\n')
sort_duplicate = function(vector) {
  val = sort(vector)
  return(c(val,val))
}
print(sort_duplicate(c(1,3,6,4)))
cat('\n')

# question 4

cat('\nNot in 1 to 10\n\n')
not_in_1_to_10 = function(vector){
  test=0:9
  for(i in test) {
    val = as.integer(grep(i,vector))
    if(length(val)==0){
      print(i)
    }
  }
}
not_in_1_to_10(c(1,3,6,4))
cat('\n')

# question 5

cat('\nWord to Number\n\n')
word_to_number = function(string){
    string_list = strsplit(string,"")
    num_vectors = c()
    for(i in string_list)
        num_vectors = c(num_vectors,match(i, letters[1:26]))
    return(num_vectors)
}

string = "word"
print(word_to_number(string))
cat('\n')

# question 6

cat('\nAnagram\n\n')
anagram = function(str1,str2){
    str1_number = sort(word_to_number(str1))
    str2_number = sort(word_to_number(str2))
    print(str1_number)
    print(str2_number) 
    if(all.equal(str1_number,str2_number)==TRUE)
        print("It is a anagram")
    else
        print("It is not a anagram")
    cat('\n')
}

anagram('and','dan')
anagram('and','adan')