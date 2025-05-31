
// Define a mutable array of integers. This will be the collection we search through.
var array = [1, 2, 3, 4, 5]

let result = array.drop(while: { element in
        return element > 3
})