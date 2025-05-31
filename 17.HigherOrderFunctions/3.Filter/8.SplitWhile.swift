
let sentence = "I love being an Apple ECO system programmer"

let result = sentence.split(whereSeparator: { letter in
        return element == " "
})

print("returned collection which satisfy the given condition:", result)