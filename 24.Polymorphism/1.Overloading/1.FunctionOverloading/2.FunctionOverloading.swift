

// polymorphism
// based on parameter type

func add(x: Int, y: Int) -> Int {
        return x + y
}

func add(x: Double, y: Double) -> Double {
        return x + y
}


func add(x: Int, y: Int, z: Int) -> Int {
        return x + y + z
}

print("Sum of two values:", add(x: 5, y: 7))

print("Sum of three values:", add(x: 12, y: 13, z: 15))
