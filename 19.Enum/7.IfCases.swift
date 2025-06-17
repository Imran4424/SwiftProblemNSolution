
enum Result {
        case success(String)
        case failure(String)
}

let result = Result.success("Operation successful")

if case .success(let message) = result {
        print("Success: \(message)")
} else {
        print("Failure")
}