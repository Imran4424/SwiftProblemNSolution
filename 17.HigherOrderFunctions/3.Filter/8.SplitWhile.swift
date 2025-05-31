
let sentence = "I love being an Apple ECO system programmer"

let result = sentence.prefix(while: { element in
        return element.count > 4
})

print("returned collection which satisfy the given condition:", result)