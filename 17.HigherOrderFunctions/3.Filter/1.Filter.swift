
// Filter is another most used higher order function

// Filter higher order functions filters data of collection based on the given condition
// And create a new collection and return it 


let numbers = [2, 1, 5, 3, 9, 15, 12, 8, 17, 20, 11, 22, 33, 55, 77]
print("numbers", numbers)

let oddNumbers = numbers.filter { $0 % 2 == 1 }
print("Odd Numbers", oddNumbers)

let evenNumbers = numbers.filter { $0 % 2 == 0 }
print("Even Numbers", evenNumbers)

let numbersGreaterThan10 = numbers.filter { number in 
        return number > 10
}
print("numbers greater than 10", numbersGreaterThan10)

let numbersLessThan10 = numbers.filter { number in 
        return number < 10
}
print("numbers less than 10", numbersLessThan10)