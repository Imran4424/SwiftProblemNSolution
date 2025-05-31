
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
        return element > 3
})

print("first greater than value from array is:", result)
