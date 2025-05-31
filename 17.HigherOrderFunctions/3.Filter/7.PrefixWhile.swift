
var array = ["Imran", "Linkon", "Joy", "Nayeem", "Anik", "Harry"]

let result = array.prefix(while: { element in
        return element.count > 4
})

print("returned collection which satisfy the given condition:", result)