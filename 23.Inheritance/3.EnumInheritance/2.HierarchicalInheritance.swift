
protocol Describable {
        /// A human-friendly description
        var description: String { get }
}

enum Fruit: String, Describable {
        case apple  = "🍎"
        case banana = "🍌"
        case cherry = "🍒"
  
        // Conformance: return rawValue plus a label
        var description: String {
                return "Fruit: \(self.rawValue)"
        }
}

enum Vegetable: String, Describable {
        case carrot = "🥕"
        case pepper = "🌶"
        case broccoli = "🥦"
  
  var description: String {
    return "Veggie: \(self.rawValue)"
  }
}

let snack: Describable = Fruit.cherry

print(snack.description)        // Fruit: 🍒
