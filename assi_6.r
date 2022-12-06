a<-as.double(readline(prompt = "Enter an angle:"))
repeat{
  if(a>=0 & a<90){
    print("It is in 1st quadrent")
  }else if(a>=90 & a<180){
    print("It is in 2nd quadrent")
  }else if(a>=180 & a<270){
    print("It is in 3rd quadrent")
  }else if(a>=270 & a<360){
    print("It is in 4th quadrent")
  }
  if(a>=360){
    a<-a-360
  }else{
    break
  }
}