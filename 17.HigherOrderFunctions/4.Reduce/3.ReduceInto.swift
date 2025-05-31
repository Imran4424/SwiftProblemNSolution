
// 1) Define some “transactions” as tuples (category, amount):
let transactions: [(String, Double)] = [
        ("Groceries",    23.45),
        ("Utilities",    75.00),
        ("Groceries",    15.20),
        ("Entertainment", 12.99),
        ("Utilities",    40.00),
        ("Entertainment", 30.00)
]

// 2) Use `reduce(into:_:)` with an accumulator of type (Double, [String: Double]):
let result = transactions.reduce(into: (grandTotal: 0.0, byCategory: [String: Double]())) { acc, txn in
        let (category, amount) = txn

        // 2a) Add the amount to the grand total:
        acc.grandTotal += amount

        // 2b) Add the amount into the dictionary under its category:
        acc.byCategory[category, default: 0.0] += amount
}

// 3) Extract final values:
let grandTotal   = result.grandTotal
let totalsByCat  = result.byCategory

print("Grand total: \(grandTotal)")                     // Grand total: 196.64
print("Totals by category: \(totalsByCat)")
// e.g. ["Groceries": 38.65, "Utilities": 115.0, "Entertainment": 42.99]
