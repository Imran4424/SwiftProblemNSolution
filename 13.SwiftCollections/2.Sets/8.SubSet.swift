
// first set
let setA: Set = [1, 2, 3, 5, 4]
print("Set A: ",  setA)

// second set
let setB: Set = [1, 2]
print("Set B: ",  setB)

// check if setB is subset of setA or not
// if setB is a subset of setA it will return true otherwise false
print("Subset: ", setB.isSubset(of: setA))