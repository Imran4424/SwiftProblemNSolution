
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
        return element > 3
})

print("first greater than value from array is:", result)

