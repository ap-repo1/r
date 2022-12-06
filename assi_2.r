#Create an integer vector of 5 elements and display the type.Print the 4th and 2nd element of the vector. Print all the items of the vector that are greater than 5. Sort the elements in descending order. Modify with 0 for all the elements that are greater than or equal to 4. Delete all the elements from the vector.

#creating those elements
a<-c(1,2,4,5,5,6,9)
print(a)

#displaying the types
print(class(a))
print(a[c(2,4)])

#printing the vectors that are greater than 5
print(a[a>5])

#sorting the elements in descending order
print(sort(a,decreasing = TRUE))

#modify with 0 for all elements that are greater than or equal to 4
a[a>=4]<-0
print(a)

#delete all elements from the vector
a<-NULL
print(a)    