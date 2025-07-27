
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

