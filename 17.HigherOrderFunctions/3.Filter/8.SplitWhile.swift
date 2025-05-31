
// Define a constant string containing a sentence with words separated by spaces.
// We will use this sentence to demonstrate how `split(whereSeparator:)` works
// by breaking it into substrings wherever a specified separator condition is met.
let sentence = "I love being an Apple ECO system programmer"

let result = sentence.split(whereSeparator: { letter in
        return letter == " "
})

print("returned collection which satisfy the given condition:", result)