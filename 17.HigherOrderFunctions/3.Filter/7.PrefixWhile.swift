
// Define a mutable array of strings. These strings represent names.
var array = ["Imran", "Linkon", "Joy", "Nayeem", "Anik", "Harry"]

/// Use the `prefix(while:)` higher-order function on `array` to take elements
/// from the start of the collection **as long as** they satisfy a given predicate.
///
/// - `prefix(while:)` iterates over each element from the beginning:
///   1. For each `element`, it calls the provided closure:
///        - If the closure returns `true`, that `element` is included in the resulting prefix.
///        - Once the closure returns `false` for the first time, iteration stops completely,
///          and `prefix(while:)` returns a new collection containing all elements collected so far.
///
/// - The closure receives one parameter:
///   - `element`: a `String` representing the current name being evaluated.
///
/// - The closure must return a `Bool` indicating whether to include this `element` in the prefix.
///
/// In this snippet, our condition is: `element.count > 4`. Therefore:
/// - We check the length (number of characters) of each name.
/// - As long as the name’s length is strictly greater than 4, we keep including it.
/// - Once we reach a name whose length is 4 or less, we stop and return everything collected up to that point.
let result = array.prefix(while: { element in
        // Check if the current `element` (a name) has more than 4 characters.
        // If this returns `true`, include the name; otherwise, stop processing further.
        return element.count > 4
})

print("returned collection which satisfy the given condition:", result)