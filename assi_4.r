#ASSIGNMENT:-4(TOPIC:-R Objects – List)
#Q:-Create a list by empId, empName and empSal for four employees. Print the name of all employees. Create another list of empAge. Concatenate two lists. Convert list to a matrix. Print the matrix and check the class of matrix.

empid<-c(1,2,3,4)
empname<-c("A","B","C")
empsal<-c(10000,5000,2000,25000)
employee<-list("ID"=empid,"NAME"=empname,"SALARY"=empsal)
print(employee)

employee["NAME"]
employee[2]
employee$NAME
employee$NAME[3]
employee["ID"]
employee[1]
employee$ID
employee$ID[3]
employee["SALARY"]
employee[3]
employee$SALARY
employee$SALARY[3]

empage<-list("AGE"=c(30,24,25,28))
employee=c(employee,empage)
print(employee)

m<-matrix(unlist(employee),nrow=4,ncol=4,byrow=FALSE)
print(m)
class(m)
