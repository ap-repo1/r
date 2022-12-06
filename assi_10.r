is.symmetric<-function(m)
{
  if(isSymmetric(m)==TRUE){
    print("The matrix is symmetric")
  }else{
    print("The matrix is not symmetric")
  }
}
is.skewsymmetric<-function(m){
  flag=0
  for(i in 1:nrow(m)){
    for(j in 1:ncol(m)){
      if(m[i,j]!=(-m[j,i])){
        flag<-1
        break
      }
    }
  }
  if(flag==0){
    print("The matrix is skew-symmetric")
  }else{
    print("The matrix is not skew-symmetric")
  }
}
is.orthogonal<-function(m){
  n=t(m)
  flag<-0
  for (i in 1:nrow(m)) {
    for(j in 1:ncol(m)){
      if(i==j){
        if(m[i,j]*n[j,i]!=1){
          flag<-1
          break
        }
      }else{
        if(m[i,j]*n[j,i]!=0){
          flag<-1
          break
        }
      }
    }
  }
  if(flag==0){
    print("The matrix is orthogonal")
  }else{
    print("The matrix is not orthogonal")
  }
}