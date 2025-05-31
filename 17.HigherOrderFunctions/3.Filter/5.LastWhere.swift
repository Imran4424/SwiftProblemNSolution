
var array = [1, 2, 3, 4, 5]

let result = array.last(where: { element in
        return element > 3
})

print("first greater than value from array is:", result)

