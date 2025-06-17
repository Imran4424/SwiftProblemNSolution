
enum AuthenticationResult {
        case success(token: String)
        case failure(error: String)
}

func authenticate(user: String, password: String) {
        let result = AuthenticationResult.success(token: "AuthToken")

        guard case .success(let token) = result else {
        print("Authentication failed")
        return
        }

        print("Authentication successful. Token: \(token)")
}