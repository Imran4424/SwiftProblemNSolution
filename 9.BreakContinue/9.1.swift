// 9.1. Write a program that finds the first multiple of 7 between 50 and 100.

var firstMultiple: Int = -1

for value in 50...100 {
        if value % 7 == 0 {
                firstMultiple = value
                break
        }
}

if firstMultiple != -1 {
        print("Found first multiple is: ", firstMultiple)
} else {
        print("Not Found")
        
}