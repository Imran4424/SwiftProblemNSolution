
// map Higher order function is similar to sorted higher order function

// but instead of sorting map transform every element of an array to the according code of given closures 
// and returns a new array containing all the transformed elements

let numbers = [1, 2, 3, 4, 5]

let squaredNumbers = numbers.map { $0 * $0 }
print("squared Numbers", squaredNumbers)

let stringNumbers = numbers.map { String($0) }
print("string Numbers", stringNumbers)

let areaOfCircles = numbers.map { radius in
        // need to type cast to double
        // cause swift does not provide an implict brige for Int <-> Double for arithmatic operation
        return Double.pi * Double(radius) * Double(radius)
}

print("Area of circles based on the provided array of radiuses", areaOfCircles)

