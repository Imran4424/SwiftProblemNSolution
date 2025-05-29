
// In previous code we learn about sorted default operations

// In this code we gonna learn about sorted custom closure operations

var array: [Int] = []

for _ in 0..<10 {
        // using random variables instead of console input
        array.append(Int.random(in: 0...100))
}

print("Unsorted Array:", array)

// for example for ascending we can use the following code
let ascendingNumbers = array.sorted { x, y in 
        return x < y
}

print("Array in ascending order:", ascendingNumbers)

// there is another syntax of it
// let ascendingNumbers = array.sorted { (x, y) -> Bool in 
//         return x < y
// }


// for example for ascending we can use the following code
let decendingNumbers = array.sorted { x, y in 
        return x > y
}

print("Array in descending order:", decendingNumbers)

// For example
// In this code, we gonna separate odd and even numbers using sorted custom closures

let evenNumbersFirst = array.sorted { x, y in
        return x % 2 == 0
}

print("Even numbers first:", evenNumbersFirst)


let oddNumbersFirst = array.sorted { x, y in
        return x % 2 == 1
}

print("Odd numbers first:", oddNumbersFirst)