// 9.1. Write a program that finds the first multiple of 7 between 50 and 100.

var firstMultiple: Int = -1

for value in 50...100 {
        if value % 7 == 0 {
                firstMultiple = value
                // break always break the immediate loop
                break
        }
}

if firstMultiple != -1 {
        print("Found first multiple is: ", firstMultiple)
} else {
        print("Not Found")
}


// break only breaks the immediate loop it is running
// let validate the claim

var count = 1

// in this loop
// we are running the inner loop for 5 times
for _ in 1...5 {

        print("loop running for \(count) times")
        
        // this loop is identical of the previous loop
        for value in 50...100 {
                if value % 7 == 0 {
                        firstMultiple = value
                        // break always break the immediate loop
                        // it will not break the outer loop
                        break
                }
        }

        count = count + 1
}

if firstMultiple != -1 {
        print("Found first multiple is: ", firstMultiple)
} else {
        print("Not Found")
}