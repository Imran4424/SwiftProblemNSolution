
protocol Identifiable {
    var id: String { get set }
    func identify()
}

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