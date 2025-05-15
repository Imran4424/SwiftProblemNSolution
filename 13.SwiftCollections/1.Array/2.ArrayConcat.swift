
// An array is a collection of similar types of data
// In terms of Swift, Array don't have fixed size

// how to declare an empty array
// array is an ordered dataset of same type
// array can contain sorted or unsorted values
// array can contain duplicate values
var myArray: [Int] = []

myArray.append(1)
myArray.append(2)
myArray.append(3)

print(myArray)
// find out the array size
print(myArray.count)

// accessing array elements with index
// like c++, in swift array index start with 0
print(myArray[0])
print(myArray[1])

// adding another array values to existing array

var anotherArray: [Int] = [4, 5, 6]
myArray.append(contentsOf: anotherArray)
print(myArray)
print(myArray.count)

// loop through array elements using for in loop
for value in myArray {
    print(value)
}
