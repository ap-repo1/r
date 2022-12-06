str<-c("Ankur","Rakesh","Arnab")
l<-length(str)
count<-1
while(count<=l)
{
  print(paste("The name",str[count],"consists of",nchar(str[count]),"characters."))
  count<-count+1
}