
// Define a mutable array of integers. This will be the collection we search through.
var array = [1, 2, 3, 4, 5]

/// Use the `drop(while:)` higher-order function on `array` to skip over
/// (i.e., “drop”) elements from the start of the collection as long as
/// the closure’s predicate returns `true`.
///
/// - `drop(while:)` iterates over each element in `array` from the beginning:
///   1. For each `element`, it invokes the closure:
///        - If the closure returns `true`, that element is dropped (skipped).
///        - Once the closure returns `false` for the first time, iteration stops,
///          and `drop(while:)` returns a new collection containing that element
///          and all subsequent elements, regardless of their values.
///   2. If **all** elements satisfy the condition, `drop(while:)` returns an empty sequence.
///
/// - The closure receives one parameter:
///   - `element`: an `Int` representing the current element being evaluated.
///
/// - The closure must return a `Bool` indicating whether to drop this element.
///
/// In this snippet, our condition is: `element < 3`. Therefore,
/// `drop(while:)` will remove all elements less than 3 from the front of `array`,
/// stopping once it encounters an element that is 3 or greater.
let result = array.drop(while: { element in
        return element < 3
})

print("returned collection which satisfy the given condition:", result)