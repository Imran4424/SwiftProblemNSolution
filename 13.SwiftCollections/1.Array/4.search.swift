
// declaring an array with values
var myArray: [Int] = [1, 2, 3, 4, 5]

// output will be [5, 2, 3, 4, 1]
print(myArray)

// searching array element with contains
print("Is the array contains value 3: \(myArray.contains(3))")

print("Is the array contains value 7: \(myArray.contains(7))")

// usage of swapAt method in array
// swapAt method exchanges the values of given position
// in next code it will swap values between 0 and 1 index
// so output will be [5, 2, 3, 4, 1]
myArray.swapAt(0, 4)
print(myArray)
