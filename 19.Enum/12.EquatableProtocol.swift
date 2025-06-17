
enum Color: Equatable {
        case red, green, blue
}

// Usage
let firstColor = Color.red
let secondColor = Color.red

if firstColor == secondColor {
        print("Both colors are equal.")
} else {
        print("Colors are different.")
}