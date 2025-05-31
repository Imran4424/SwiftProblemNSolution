
// The flatMap function allows us to transform a set of arrays into a single set of array that contains all of the elements.

let dimentions2D = [[3, 4, 5], [2, 5, 3], [1, 2, 2], [5, 5, 4], [3, 5, 3]]

print("Dimentions in 2D", dimentions2D)

let points = dimentions2D.flatMap { $0 }

print("Points in 1D", points)
