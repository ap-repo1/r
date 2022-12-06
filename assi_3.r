#Q:-Write a R program to create three vectors a, b, c with 3 integers. Combine the three vectors to become a 3×3 matrix where each column represents a vector. Put the row name as A, B, C and column name as 1, b, c. Print the first and second row. Print the first and third column. Delete the 2nd row of the matrix. Again, create another vector d vector with 3 integers and concatenate it with the previous matrix. Now print the content of the matrix, diagonal elements and the transpose of the matrix. Finally check that it is a square matrix or not.
#creating 3 vectors
a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)

#in a matrices
m<-matrix(c(a,b,c),nrow=3, ncol=3, byrow=TRUE)
#print(m)

#put the names
rownames(m)<-c('A','B','C')
colnames(m)<-c('a','b','c')
#print(m)

#print the first and the second row
# print(m[,c(1,3)])
 m<-m[-2,]
 #print(m)
 d<-c(9,8,7)
 #print(d)
 m<-rbind(m,d)
# print(m)
 tm<-t(m)
 e<-diag(m)
 #print(e)
 
 #check that is it a squre matrix or not
 if(nrow(m)==ncol(m))
 {
   print("Square Matrix")
 }else {
   print("Not a Square Matrix")
 }
 #if(nrow(m)!=ncol(m)) {
  # print("Square Matrix")
 #}else {
 #  print("Not a Square Matrix")
 #}