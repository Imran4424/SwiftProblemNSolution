
// person protocol
protocol Person {
        var name: String { get set }
        var age: Int { get set }
}

/* 
        A protocol is a special type which defines the blueprint of properties, methods and other requirements 
        that suit a particular task or piece of functionality.

        The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation
        of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.

        In a protocol, mostly we gonna see the defination of properties and methods. Properties will only have the 
        type definition not any particular values and Methods will only have the deifinition (blueprint) not the body.
*/