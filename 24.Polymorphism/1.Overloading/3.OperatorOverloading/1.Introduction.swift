
// polymorphism
// operator overloading

/* 
        operator overloading is a technique to introduce new custom operators

        or

        add new implementation to existing operators


        In this series,
        First, we gonna learn how to add new implementations for existing operators

        Then we are gonna learn,
        How to introduce new custom operators
*/

// 1) Define your type
struct Vector2D {
        var x: Double
        var y: Double
}

// 2) Overload the built-in '+' operator
extension Vector2D {
        static func + (lhs: Vector2D, rhs: Vector2D) -> Vector2D {
                return Vector2D(x: lhs.x + rhs.x,
                                y: lhs.y + rhs.y)
        }
}

// 3) Overload the built-in '-' operator
extension Vector2D {
        static func - (lhs: Vector2D, rhs: Vector2D) -> Vector2D {
                return Vector2D(x: lhs.x - rhs.x,
                                y: lhs.y - rhs.y)
        }
}


/*
        both - https://www.hackingwithswift.com/example-code/language/how-to-use-operator-overloading

        custom operator - https://www.hackingwithswift.com/example-code/language/how-to-use-operator-overloading
*/