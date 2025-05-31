
// Define a constant string containing a sentence with words separated by spaces.
// We will use this sentence to demonstrate how `split(whereSeparator:)` works
// by breaking it into substrings wherever a specified separator condition is met.
let sentence = "I love being an Apple ECO system programmer"

/// Use the `split(whereSeparator:)` higher-order function on `String` to break
/// the original string into a collection of substrings (`[Substring]`), splitting
/// at every character for which the provided closure returns `true`.
///
/// - `split(whereSeparator:)` iterates over each `Character` in `sentence`. For each `letter`,
///   it calls the closure:
///   1. If the closure returns `true`, that character is treated as a delimiter (separator),
///      and the current collected substring (if non-empty) is added to the resulting array.
///   2. If the closure returns `false`, that character is appended to the current substring builder.
///   3. Once iteration completes, any trailing substring is also included (if non-empty).
///
/// - The closure receives one parameter:
///   - `letter`: a `Character` from `sentence` during iteration.
///
/// - The closure must return a `Bool` indicating whether `letter` should be treated as a separator.
///
/// In this snippet, our condition is: `letter == " "`. Therefore:
/// - Whenever the character is a space (`" "`), it marks the boundary between words.
/// - `split(whereSeparator:)` will drop each space and produce substrings containing the individual words.
let result = sentence.split(whereSeparator: { letter in
        // Check if the current character is a space. Returning `true` means "split here".
        return letter == " "
})

/// Print the resulting collection of substrings. Each element of `result` is a `Substring`
/// corresponding to a word in the original sentence, in order.
///
/// - The printed `result` will be of type `Array<Substring>`, for example:
///   `["I", "love", "being", "an", "Apple", "ECO", "system", "programmer"]`
///
/// - We pass two arguments to `print(_:_:)`:
///   1. A descriptive prompt string.
///   2. The `result` array of substrings.
print("returned collection which satisfy the given condition:", result)