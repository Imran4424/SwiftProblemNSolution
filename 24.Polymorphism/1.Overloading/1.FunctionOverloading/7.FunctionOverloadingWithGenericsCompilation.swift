
// polymorphism
// based on parameter count
// based on generics
// and based on default values

// following code will give compilation error
// .zero and 0 is not same
// 0 - is Int value
// .zero is a property which provides generic 0 value for arithmatic in this case
//
// error message: default argument value of type 'Int' cannot be converted to type 'T'
func add<T: AdditiveArithmetic>(x: T = 0, y: T = 0, z: T = 0) -> T {
        return x + y + z
}

print("Sum of two values:", add(x: 5, y: 7))

print("Sum of two values:", add(x: 5.7, y: 7.5))

print("Sum of three values:", add(x: 12, y: 13, z: 15))

print("Sum of three values:", add(x: 12.13, y: 13.15, z: 15.12))