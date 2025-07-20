
// polymorphism
// based on number parameter count

func add(x: Int, y: Int) -> Int {
        return x + y
}

func add(x: Int, y: Int, z: Int) -> Int {
        return x + y + z
}

print("Sum of two values:", add(5, 7))

print("Sum of three values:", add(12, 13, 15))
