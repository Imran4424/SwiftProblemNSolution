
// Define a mutable array of integers. This will be the collection we search through.
var array = [1, 2, 3, 4, 5]

/// Use the `first(where:)` higher-order function on the array to find the first element
/// that satisfies a given condition.
///
/// - `first(where:)` iterates over each element in `array` until the closure returns `true`.
///   - If the closure returns `true` for an element, `first(where:)` immediately returns that element (wrapped in an optional).
///   - If no element satisfies the condition, `first(where:)` returns `nil`.
///
/// - The closure receives one parameter:
///   - `element`: an `Int` representing the current array element being evaluated.
///
/// - The closure must return a `Bool` indicating whether this single `Int` meets the desired condition.
///
/// Here, we want to find the first element in `array` that is greater than `3`.
let result = array.first(where: { element in
        // Check if the current `element` (e.g., 1, 2, 3, 4, 5) is greater than 3.
        // If so, this becomes the first match and is returned.
        return element > 3
})

/// Print the result of `first(where:)`, which is an optional `Int`.
///
/// - If `result` is non-`nil`, it will contain the first array element greater than 3.
/// - If `result` is `nil`, no element in `array` satisfied the condition.
///
/// - We pass two arguments to `print(_:_:)`:
///   1. A human-readable prompt string.
///   2. The `result` optional, which may show a value like `4` or `nil`.
print("first greater than value from array is:", result)
