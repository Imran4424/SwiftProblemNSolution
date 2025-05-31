
let message = "This message is going to be broken in pieces!"

let splitOnce = message.split(maxSplits: 1, whereSeparator: { $0 == " " })

print(splitOnce)
// Prints ["This", "message is going to be broken in pieces!"]

let anotherMessage = "This message is going to    be broken in pieces!"

let emptySequences = anotherMessage.split(omittingEmptySubsequences: false, whereSeparator: { $0 == " " })

print(emptySequences)
// Prints ["This", "message", "is", "going", "to", "", "", "", "be", "broken", "in", "pieces!"]

let paragraph = "This paragraph will be separated in parts. Based on the periods and the exclamation mark! There will be three strings!"

let sentences = paragraph.split { $0 == "." || $0 == "!" }

print(sentences)
// Prints ["This paragraph will be separated in parts", " Based on the periods and the exclamation mark", " There will be three strings"]