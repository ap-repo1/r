data<-read.csv(file.choose())
x<-data$Miles
y<-data$Fitness
relation<-lm(y~x)
xd<-data.frame(x=as.integer(readline("Enter your avg. miles:")))
result<-predict(relation,xd)
print(result)