f<-function(x1,m1,sd1){
  return(exp((-(x1-m1)^2)/(2*sd1^2))/(sd1*sqrt(2*3.14)))
}
low1=as.double(readline(prompt = "lower limit:"))
up1=as.double(readline(prompt = "upper limit:"))
m1=as.double(readline(prompt = "mean:"))
sd1=as.double(readline(prompt = "sd:"))
n1=as.integer(readline(prompt = "total intervals:"))
h1=(up1-low1)/n1
s1=0.0
for (i in 0:n1) {
  s1=s1+f(low1+i*h1,m1,sd1)+f(low1+(i+1)*h1,m1,sd1)
}
s1=s1*(h1/2.0)
print(s1)
X1=seq(from=low1,to=up1,by=h1)
Y1=dnorm(X1,m1,sd1)
plot(X1,Y1,main="Normal Diatribution",xlab="Distribution",ylab="Y",col="red")