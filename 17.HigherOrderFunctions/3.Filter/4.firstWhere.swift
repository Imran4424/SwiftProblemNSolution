
var array = [1, 2, 3, 4, 5]

let result = array.first(where: { element in
        return element > 3
})

print("first greater than value from array is:", result)
