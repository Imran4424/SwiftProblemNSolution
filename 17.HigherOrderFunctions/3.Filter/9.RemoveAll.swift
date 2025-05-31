
// Define a mutable array of integers.
var numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]

/// Use the `removeAll(where:)` higher-order function to remove every element
/// that satisfies the given predicate (closure).
///
/// - `removeAll(where:)` iterates over each element in `numbers`.
///   For each `number`, it invokes the closure:
///   1. If the closure returns `true`, that element is removed from the array.
///   2. If the closure returns `false`, that element is kept.
///   3. After checking all elements, the array is mutated in-place to only contain
///      elements for which the closure returned `false`.
///
/// - The closure receives one parameter:
///   - `number`: an `Int` representing the current element being evaluated.
///
/// - The closure must return a `Bool` indicating whether to remove this element.
///
/// In this snippet, our condition is: `number < 10`. Therefore:
/// - All elements strictly less than 10 will be removed.
/// - Elements 10 or greater remain in the array.
numbers.removeAll { (number) -> Bool in
    return number < 10
}

print(numbers)