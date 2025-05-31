
let anotherMessage = "This message is going to be broken in pieces!"

let splitOnce = anotherMessage.split(maxSplits: 1, whereSeparator: { $0 == " " })

print(splitOnce)
// Prints ["This", "message is going to be broken in pieces!"]

let anotherMessage = "This message is going to    be broken in pieces!"

