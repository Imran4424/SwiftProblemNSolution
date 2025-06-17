
enum Event {
        case start
        case stop
        case pause
        case resume
}

let events: [Event] = [.start, .pause, .resume, .stop]

for case .pause in events {
        print("Pause event found.")
}