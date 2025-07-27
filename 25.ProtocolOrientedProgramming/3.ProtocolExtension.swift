
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

struct User: Identifiable {
    var id: String
}

let pritha = User(id: "prithaSaha")
pritha.identify() // Uses the default implementation from the protocol extension