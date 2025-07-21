
// polymorphism
// based on parameter count
// based on generics
// and based on default values

func add<T: AdditiveArithmetic>(x: T = .zero, y: T = .zero, z: T = .zero) -> T {
        return x + y + z
}

print("Sum of two values:", add(x: 5, y: 7))

print("Sum of two values:", add(x: 5.7, y: 7.5))

print("Sum of three values:", add(x: 12, y: 13, z: 15))

print("Sum of three values:", add(x: 12.13, y: 13.15, z: 15.12))