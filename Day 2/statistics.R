# generate cumulative frequency for a vector

vector = c(1:10)
cat('Vector : ',vector,'\n')

cum_freq = cumsum(vector)
cat('Cumulative frequency : ',cum_freq,'\n')

# max, min, length of the vector

cat('Max : ',max(vector),'\n')
cat('Min : ',min(vector),'\n')
cat('Length : ',length(vector),'\n')
cat('Variance : ',var(vector),'\n')
