
// Define a constant string containing a sequence of lowercase letters.
// This string will be used to check whether every character meets a specific condition.
let letters = "abcdabcdae"

/// Use the `allSatisfy(_:)` higher-order function on `String` to verify that
/// *every* character in `letters` satisfies the given predicate.
///
/// - `allSatisfy` iterates over each `Character` in the string and invokes the closure:
///   - If the closure returns `true` for **all** characters, `allSatisfy` returns `true`.
///   - If the closure returns `false` for *any* character, `allSatisfy` short-circuits and returns `false`.
///
/// - The closure receives one parameter:
///   - `letter`: a `Character` representing the current character being evaluated.
///
/// - The closure must return a `Bool` indicating whether this single `Character`
///   meets the desired condition.
///
/// Here, we want to check if each `letter`, when converted to uppercase, equals `"E"`.
let result = letters.allSatisfy { letter in
        return letter.uppercased() == "E"
}

print("Is given conditions satisfy all the letters?", result)
