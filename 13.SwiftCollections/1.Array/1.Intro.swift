
// An array is a collection of similar types of data
// In terms of Swift, Array don't have fixed size

// how to declare an empty array
// array is an ordered dataset
// array can contain sorted or unsorted values
// array can contain duplicate values
var myArray: [Int] = []

myArray.append(1)
myArray.append(2)
myArray.append(3)

// output will be [1, 2, 3]
print(myArray)

// accessing array elements with index
// like c++, in swift array index start with 0
print(myArray[0])
print(myArray[1]) 


// using insert method to insert values to array
// it will insert value 4 at index 1
// output will be [1, 4, 2, 3]
myArray.insert(4, at: 1)
print(myArray)

// removing array elements

// remove first element
myArray.removeFirst()
print(myArray)

// removing last element
myArray.removeLast()
print(myArray)

// check if array is empty or not
print("Is array empty? :\(myArray.isEmpty)")

// remove all array elements
myArray.removeAll()
print("Is array empty? :\(myArray.isEmpty)")
