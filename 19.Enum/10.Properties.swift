
enum MyEnum {
        // Stored properties not allowed in enum
        case item(mutable: String, immutable: Int)

        // Computed property
        var computedProperty: String {
                return "Computed value on Enum"
        }

        // Static properties
        static var staticProperty: Double = 3.14
        static let staticConstant: String = "Static Constant Value"

        // Initializer not allowed in enum

        // Method
        func printInfo() {
                switch self {
                case .item(let mutable, let immutable):
                        print("Mutable Property: \(mutable)")
                        print("Immutable Property: \(immutable)")
                        print("Computed Property: \(computedProperty)")
                }
        }

        // Static method
        static func printStaticInfo() {
                print("Static Property: \(staticProperty)")
                print("Static Constant: \(staticConstant)")
        }
}

// Usage
var instance = MyEnum.item(mutable: "Hello", immutable: 42)
instance.printInfo()
// Output:
// Mutable Property: Hello
// Immutable Property: 42
// Computed Property: Computed value based on Hello

MyEnum.printStaticInfo()
// Output:
// Static Property: 3.14
// Static Constant: Static Constant Value