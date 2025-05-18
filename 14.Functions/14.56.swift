// 14.56. Function with variadic parameters

// when, we do not know in advance the number of arguments that will be passed into a function.
// then, we use variadic parameters

// variadic parameters means
// we can pass varying number of parameter in function
func sum(numbers: Int...) {
        var result = 0

        for num in numbers {
                result = result + num
        }

        print("Sum = \(result)")
}

// function call with 3 arguments
sum(numbers: 1, 2, 3)

// function call with 2 arguments
sum (numbers: 4, 9)

// function call with 5 arguments
sum(numbers: 1, 2, 3, 4, 5)