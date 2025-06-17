
enum Card: CaseIterable {
        case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king

        var id: Self { self }
}

// Usage
let myCard = Card.queen
print("Identifier for \(myCard): \(myCard.id)")