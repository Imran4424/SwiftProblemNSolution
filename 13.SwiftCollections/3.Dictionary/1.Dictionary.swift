

// Dictionary is a special kind of collection
// Which arrange data in key-value pairs manner
// for every key, there will be some value
// that's why this is called key-value pairs


// Swift dictionary is an unordered collection of items.


// this is a dictionary
// in which 
// key is the country name
// value is the capital name
var capitalCity = ["Nepal": "Kathmandu", "Italy": "Rome", "England": "London"]
print(capitalCity)

// add elements to dictionary
capitalCity["Bangladesh"] = "Dhaka"
print(capitalCity)

capitalCity["Canada"] = "Ottowa city"

for (key, value) in capitalCity {
        print("\(key): \(value)")
}
print("")


// changing value in a dictionary
capitalCity["Canada"] = "Ottowa"

for (country, capital) in capitalCity {
        print("\(country): \(capital)")
}
print("")

// dictionary with keys and values of different data types
var numbers = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six"]
print(numbers)

// access only keys
var numberKeys = Array(numbers.keys)
print("keys:", numberKeys)

// access values only
var numberValues = Array(numbers.values)
print("values", numberValues)

// declaring an empty dictionary
var sortedNumbers: [Int: String] = [:]

// since dictionary is unordered collection
// sorted function will provide the sorted array of dictionary elements
let sortedNumbersArray = numbers.sorted { $0.key < $1.key }
print(sortedNumbersArray)

// contains will provide a boolean response if the key is available or not in the dictionary
// contains require a key as parameter
// it will return true if the provided key is present in the dictionary
// it will return false if the provided key is not present in the dictionary
var isPresent = numbers.keys.contains(6)
print("Is 6 present in dictionary", isPresent)

// delete a key from dictionary
let removedNumber = numbers.removeValue(forKey: 6)
print("Removed value is:", removedNumber)

// contains will provide a boolean response if the key is available or not in the dictionary
// contains require a key as parameter
// it will return true if the provided key is present in the dictionary
// it will return false if the provided key is not present in the dictionary
isPresent = numbers.keys.contains(6)
print("Is 6 present in dictionary", isPresent)

// remove all elements in dictionary
numbers.removeAll()
print(numbers)


// we can try later
// shuffled()
// randomElement()
// firstIndex()