
// polymorphism
// based on parameter count
// based on parameter type
// and based on default values


func add(x: Int = 0, y: Int = 0, z: Int = 0) -> Int {
        return x + y + z
}

func add(x: Double = 0.0, y: Double = 0.0, z: Double = 0.0) -> Double {
        return x + y + z
}

print("Sum of two values:", add(x: 5, y: 7))

print("Sum of two values:", add(x: 5.7, y: 7.5))

print("Sum of three values:", add(x: 12, y: 13, z: 15))

print("Sum of three values:", add(x: 12.13, y: 13.15, z: 15.12))