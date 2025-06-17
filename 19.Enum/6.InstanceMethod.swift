
import Foundation

enum TrafficLight {
    case red
    case yellow
    case green

        func timeRemaining() -> TimeInterval {
                switch self {
                case .red: return 30.0
                case .yellow: return 5.0
                case .green: return 40.0
                }
        }
}

// Usage
let currentLight = TrafficLight.red
let remainingTime = currentLight.timeRemaining()
print("Time remaining for \(currentLight): \(remainingTime) seconds")