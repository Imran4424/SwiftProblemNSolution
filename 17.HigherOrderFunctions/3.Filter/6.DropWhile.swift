
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
        // Check if the current `element` is less than 3.
        // As long as this returns `true`, `drop(while:)` will skip that element.
        // For `array = [1, 2, 3, 4, 5]`, it drops 1 and 2, then stops at 3.
        return element < 3
})

/// Print the resulting “suffix” of the array after dropping elements.
/// 
/// - `result` is of type `ArraySlice<Int>`, containing all elements from the point
///   where the predicate first returned `false` until the end of the array.
/// - In our example, elements 1 and 2 are dropped, so `result` will be `[3, 4, 5]`.
/// 
/// We use `print(_:_:)` with:
/// 1. A descriptive prompt string.
/// 2. The `result` collection.
print("returned collection which satisfy the given condition:", result)