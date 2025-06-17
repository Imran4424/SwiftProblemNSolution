
enum Color {
        case red, green, blue
}

extension Color {
        var hexRepresentation: String {
                switch self {
                case .red: return "#FF0000"
                case .green: return "#00FF00"
                case .blue: return "#0000FF"
                }
        }
}

// Usage
let redColor = Color.red
print("Hex representation of red: \(redColor.hexRepresentation)")