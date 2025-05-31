
let letters = "abcdabcdae"

let result = letters.allSatisfy { letter in
        return letter.uppercased() == "E"
}

print("Is given conditions satisfy all the letters?", result)
