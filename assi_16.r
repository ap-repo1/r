f<-function(x,m,sd){
  return(exp((-(x-m)^2)/(2*sd^2))/(sd*sqrt(2*3.14)))
}
low=as.double(readline(prompt = "lower limit:"))
up=as.double(readline(prompt = "upper limit:"))
m=as.double(readline(prompt = "mean:"))
sd=as.double(readline(prompt = "sd:"))
n=as.integer(readline(prompt = "total intervals:"))
h=(up-low)/n
s=0.0
for (i in 0:n) {
  s=s+f(low+i*h,m,sd)+f(low+(i+1)*h,m,sd)
}
s=s*(h/2.0)
print(s)
X=seq(from=low,to=up,by=h)
Y=dnorm(X,m,sd)
plot(X,Y,main="Normal Diatribution",xlab="Distribution",ylab="Y",col="red")