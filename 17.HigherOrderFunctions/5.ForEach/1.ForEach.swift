
// forEach is higher order function to access all the elements
// forEach is a variation of for in loop in form of higher order function

let words = ["apple", "banana", "cherry"]

// Using forEach() function to print all the
// elements of the given collection
words.forEach { print($0) }

var counter = 0
let numbers = [1, 2, 3, 4, 5]

// Counting even numbers using forEach with given conditions
numbers.forEach { 
        if $0 % 2 == 0 { 
                counter += 1
        } 
}

print("even numbers count", counter)


let numbersInWord = ["One", "Two", "Three", "Four", "Five", "Six"]
numbersInWord.forEach { element in
        print(element)
}

/* 
        N.B:  A big warning

        forEach is similar to for in loop

        but only big difference is we can not use break or continue in forEach loops
*/