data<-read.csv(file.choose())
nrow(data)
max(data$Sal)
subset(data,Department=="IT")
subset(data,Department=="IT" & Sal>10000)
data1<-subset(data,Sal==max(data$Sal))
data1
write.csv(data1,file.choose())