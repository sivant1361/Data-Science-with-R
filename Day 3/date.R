print(Sys.time())
print(Sys.Date())
cat('\n')

date = Sys.Date()
# print(is.Date(date))
date_char = as.character(date)
# print(is.Date(date_char))
print(as.Date(date_char))

mydate = as.Date("Nov-14-2020",format="%b-%d-%Y")
print(mydate)

r<-as.Date("June,01,2002",format="%B,%d,%Y")
print(r)

hr = as.POSIXct('03:21:59',format="%H:%M:%S")
print(hr)
hr = as.POSIXlt('03:21:59',format="%H:%M:%S")
print(hr)
hr = as.POSIXct('03:21:59',format="%h:%m:%s")
print(hr)

hr = strptime('03:21:59',format="%H:%M:%S")
print(hr)
