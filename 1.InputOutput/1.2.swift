// 1.2. An integer variable n contains 5. Write a program that prints value of n.

// initializing an integer variable
var n: Int = 5

// string interpolation
// mostly used string interpolation in swift
print("N contains \(n)")

// string interpolation can also be done like this
print("N contains", n)

/* 
        print() - is the basic output function of swift

        print() function signature:
        print(_ items: Any..., separator: String = " ", terminator: String = "\n")

        1. items: it's plural, it can be multiple items
        2. separator: separator string of multiple items, default parameter value of this parameter is single space
        3. terminator: what string should be appended after the given items, efault parameter value of this parameter is single line break(\n)
*/