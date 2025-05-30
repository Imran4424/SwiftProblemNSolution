
// compactMap() is a variation of higher order function map

// The main difference between map and comapactMap is
// compactMap will only return the values which will satisfy the given statements

let numbersInString = ["1", "x2", "3", "4", nil, "five5"]

let validNumbersMap = numbersInString.map { stringValue in
        return Int(stringValue ?? "")
}
print("valid Numbers with Map: \(validNumbersMap)")

let validNumbersCompactMap = numbersInString.compactMap { stringValue in
        return Int(stringValue ?? "")
}
print("valid Numbers with compact Map: \(validNumbersCompactMap)")


// So in which conditions we should use compactMap instead of map

// If we are working with an array which contains nil values
// If we are working with some operation which can return optional values then we should use compactMap