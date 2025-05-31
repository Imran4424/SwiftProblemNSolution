
// Define a mutable array of integers. This will be the collection we search through.
var array = [1, 2, 3, 4, 5]

/// Use the `last(where:)` higher-order function on `array` to locate the
/// last element that satisfies a given predicate.
///
/// - `last(where:)` iterates over the array from start to end under the hood,
///   but conceptually it returns the final element in the collection for which
///   the provided closure returns `true`. If no element matches, it returns `nil`.
///
/// - The closure receives one parameter:
///   - `element`: an `Int` representing the current element being evaluated.
///
/// - The closure must return a `Bool` indicating whether this element meets
///   the desired condition.
///
/// Here, our condition is: “element > 3”. Therefore, `last(where:)` will return
/// the **last** integer in `array` that is greater than 3.
let result = array.last(where: { element in
        // Check if the current `element` (e.g., 1, 2, 3, 4, 5) is greater than 3.
        // Returning `true` indicates a match. The function will continue checking
        // subsequent elements, but ultimately returns the final matching value.
        return element > 3
})


/// Print the result of `last(where:)`, which is an Optional `Int`.
///
/// - If `result` is non-`nil`, it contains the last element in `array` greater than 3.
///   In this specific array ([1, 2, 3, 4, 5]), elements greater than 3 are [4, 5],
///   and the “last” of those is 5, so `result` will be `Optional(5)`.
///
/// - If `result` is `nil`, no element satisfied the condition.
///
/// We pass two arguments to `print(_:_:)`:
/// 1. A descriptive prompt string.
/// 2. The `result` Optional, showing either a value (e.g., `5`) or `nil`.
print("last greater than value from array is:", result)

