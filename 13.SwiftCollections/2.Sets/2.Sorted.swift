
// create a set of integer type
var studentID : Set<Int> = [112, 114, 116, 118, 115, 121, 131]

print("Student ID: \(studentID)")

// sort this set elements
// Set is an unordered dataset
// that's why we can not sort it internally
// when we call the method sorted()
// it put the elements of the set in an array then sort the array
// then sorted() method returns the sorted array
var sortedStudentID = studentID.sorted()
print("Sorted Student ID: \(sortedStudentID)")

