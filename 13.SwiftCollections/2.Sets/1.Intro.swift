
// A set is a collection of unique data. That is, elements of a set cannot be duplicate

// create a set of integer type
//var studentID : Set = [112, 114, 116, 118, 115]
var studentID : Set<Int> = [112, 114, 116, 118, 115, 121, 131]

print("Student ID: \(studentID)")

// now insert an duplicate element in Set but the output will be same
studentID.insert(116)
print("Student ID: \(studentID)")

// find the number of the set elements
print("Total elements: \(studentID.count)")

// iterate over set elements
for id in studentID {
    print(id)
}

// removing data from sets
studentID.remove(116)
print("Student ID: \(studentID)")
print("Total elements: \(studentID.count)")

// remove first element from sets
studentID.removeFirst()
print("Student ID: \(studentID)")
print("Total elements: \(studentID.count)")

// check if the set is empty or not
print("Is Set is empty? : \(studentID.isEmpty)")


// removing all elements from set
studentID.removeAll()
print("Student ID: \(studentID)")

print("Is Set is empty? : \(studentID.isEmpty)")
