
// The reduce higher order function combines all the elements of a collection 
// to a single variable
// based on the given condition

let numbers = [2, 1, 5, 3, 9, 15, 12, 8, 17, 20, 11, 22, 33, 55, 77]
print("numbers", numbers)

// here intial value is 0 and symbol is plus
// the following line of code wil do summation of collection elements
let sum = numbers.reduce(0, +)
print("Sum of the collection", sum)

// here intial value is 0
// operations is $0 + $1, 
// $0 - which indicates adding first as the initial and summation value
// $1 - which indicates all the collection element
// the following line of code wil do summation of collection elements
let sumTwo = numbers.reduce(0, { $0 + $1 })
print("Sum of the collection", sumTwo)

let sumThree = numbers.reduce(0) { (result, number) -> Int in
        result + number
}
print("Sum of the collection:", sum)

// here intial value is 1 and symbol is multiply
// the following line of code wil do multipication of collection elements
let multipication = numbers.reduce(1, *)
print("Multipication of the collection", multipication)

// here intial value is 1
// the following lines of code wil do multipication of collection elements
// here, result is the multipication result, which intial value is 1
// element is the every element of collection
let multipicationTwo = numbers.reduce(1) { result, element in 
        return result * element
}
print("Multipication of the collection", multipicationTwo)

// here intial value is ""
// operations is $0 + $1, 
// $0 - which indicates adding first as the initial and summation value
// $1 - which indicates all the collection element
let stringNumber = numbers.reduce("") { $0 + String($1) }
print("string concatanation of numbers", stringNumber)

let words = ["Programming", "is", "like", "writing poetry"]
print("Words", words)

let sentence = words.reduce("", { $0 + " " + $1 })
print("Sentence:", sentence)
