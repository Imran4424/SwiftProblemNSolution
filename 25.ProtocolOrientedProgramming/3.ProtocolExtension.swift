
/// A protocol that requires a textual id.
/// And implementation of identify method
protocol Identifiable {
    var id: String { get set }
    func identify()
}

/// providing default implementation of identify method
/// protocol extensions only for default implementation
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

// not giving error while struct not providing implementation
// because protocol extension provides default implementation of identify() method
struct User: Identifiable {
    var id: String
}

let pritha = User(id: "prithaSaha")
pritha.identify() // Uses the default implementation from the protocol extension