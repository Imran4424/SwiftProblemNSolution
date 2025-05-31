
// reduce(into:) transforms a collection to another collection
// using given condition

let letters = "abcdefghaaciddejklmdlmnddefghiimgid"

// here,
// we are counting frequency of given letters
// using a dictionary

let result = letters.reduce(into: [:]) { result, letter in
        result[letter, default: 0] += 1
}

print("Frequency of letters:", result)
