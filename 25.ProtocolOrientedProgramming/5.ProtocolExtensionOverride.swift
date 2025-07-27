

/// A protocol that requires a textual id.
/// And implementation of identify method
protocol Identifiable {
    var id: String { get set }
    func identify()
}

/// providing default implementation of identify method
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

// not giving error while struct not providing implementation
// because protocol extension provides default implementation of identify() method
// but we can always provide our custom implementation like previous ways
// when custom implementation is available it will not call the default implementation
struct User: Identifiable {
    var id: String

    func identify() {
        print("Custom Method implementation from Struct") 
        print("My ID is \(id).")
    }
}

let pritha = User(id: "prithaSaha")
pritha.identify() // Uses the default implementation from the protocol extension