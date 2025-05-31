
let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
let result = numbers.filter { $0 % 2 == 0 } // Get even numbers
                    .map { $0 * $0 } // Square each number
                    .reduce(0, +) // Sum the squared numbers
print(result) // Output: 120