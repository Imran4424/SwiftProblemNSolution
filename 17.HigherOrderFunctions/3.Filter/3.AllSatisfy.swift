
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
        // Convert the `Character` to a `String`, uppercase it, and compare to "E".
        // If this comparison is true, it means the character is "e" or "E".
        // Otherwise, it is some other character and the predicate fails.
        return letter.uppercased() == "E"
}

/// Print the final boolean result, indicating whether *all* characters in `letters`
/// satisfy the condition of being "E" (case-insensitive).
///
/// - We pass two arguments to `print(_:_:)`:
///   1. A human-readable prompt string.
///   2. The `result` boolean from `allSatisfy(_:)`.
/// - If `result` is `true`, **every** character in `letters` is "E"/"e".
/// - If `result` is `false`, at least one character did not match.
///
print("Is given conditions satisfy all the letters?", result)
