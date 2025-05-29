
// sorted() is higher order function

// sorted() transforms a array or list to another array or list
// this is not in-place
// this is functional operation

var array: [Int] = []

for _ in 0..<10 {
        // using random variables instead of console input
        array.append(Int.random(in: 0...100))
}

print("Unsorted Array:", array)

// nothing will be changed since we are not holding the returned list
array.sorted()
print("Array in ascending order(which is not working):", array)

// this sorted function sort data by transforming them into another list
// sorted returns the new list
// so, we need to catch to show it
let ascendingNumbers = array.sorted()

print("Array in ascending order:", ascendingNumbers)

// We can use the sorted higher order function another way
// in this way we gonna pass conditions for transformation


// to understand the logic let's think about sorting algorithms where we have two nested loops
// $0 - kind of work as first loop access index
// $1 - kind of work as second loop access index
let ascendingNumbersTwo = array.sorted { $0 < $1 }

print("Array in ascending order:", ascendingNumbersTwo)

// to understand the logic let's think about sorting algorithms where we have two nested loops
// $0 - kind of work as first loop access index
// $1 - kind of work as second loop access index
let decendingNumbers = array.sorted { $0 > $1 }

print("Array in descending order:", decendingNumbers)

// we can also use sorted(by:) syntax
// we can also use this parameter call for ascending, just we need to pass the < instead of >
let decendingNumbersTwo = array.sorted(by: >)

print("Array in descending order:", decendingNumbersTwo)