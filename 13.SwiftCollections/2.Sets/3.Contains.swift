// create a set of integer type
var studentID : Set<Int> = [112, 114, 116, 118, 115, 121, 131]

print("Student ID: \(studentID)")

if studentID.contains(114) {
        print("114 is present in the set")
} else {
        print("114 is not present in the set")
}

if studentID.contains(151) {
        print("151 is present in the set")
} else {
        print("151 is not present in the set")
}