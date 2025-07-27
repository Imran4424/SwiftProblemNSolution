
/// A protocol that requires a textual description.
protocol Describable {
    /// A textual description of the instance.
    var description: String { get }
}

/// An extension to the Describable protocol that provides
/// a default implementation of a helper method.
extension Describable {
    
    /// Prints the description of the object with a header.
    ///
    /// This default implementation can be used by any type that
    /// conforms to `Describable` without overriding it.
    func printDescription() {
        print("Description: \(description)")
    }
}

/// A struct representing a book, conforming to `Describable`.
struct Book: Describable {
    var title: String
    var author: String
    
    /// Returns a description of the book.
    var description: String {
        return "'\(title)' by \(author)"
    }
}

let book = Book(title: "1984", author: "George Orwell")
book.printDescription() // Uses the default implementation from the protocol extension
