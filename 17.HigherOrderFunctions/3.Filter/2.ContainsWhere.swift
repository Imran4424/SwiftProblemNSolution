
// Define a constant string containing a sequence of lowercase letters.
// This will be the sequence we search through to check for the presence of "E".
let letters = "abcdabcdae"

/// Check if the string `letters` contains any character that, when uppercased, equals "E".
///
/// - We use the `contains(where:)` higher-order function on `String`, which iterates over
///   each `Character` in the string until the closure returns `true`.
/// - The closure receives each `letter` (of type `Character`) and returns a `Bool`.
///   If any letter satisfies the closure’s condition, `contains(where:)` returns `true`,
///   otherwise it returns `false`.
///
/// - Parameter letter: A single `Character` from the `letters` string during iteration.
/// - Return Value: `true` if `letter.uppercased()` is equal to `"E"`, else `false`.
let result = letters.contains(where: { letter in
        // Convert the current character to a `String`, uppercase it, and compare to "E"
        return letter.uppercased() == "E"
})

print("Is E contains in the letters?", result)
