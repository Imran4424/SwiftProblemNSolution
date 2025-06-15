
// like struct and class, we can also declare user-defined data type using enum
// while class is reference type, struct and enum is value type


// while struct and class provides a composite data type (collection of fundamental or user defined properties)
// enum focuses on group of related values

enum Weekday {
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
        case sunday 
}

// another basic enum syntax is

enum CompassDirection {
        case north
        case south
        case east
        case west
}

func shareYourStatus(on day: Weekday) {
        switch day {
        case .monday:
                print("Go to Office")
        case .tuesday:
                print("Go to Office")
        case .wednesday:
                print("Go to Office")
        case .thursday:
                print("Go to Office")
        case .friday:
                print("Go to Office")
        case .saturday:
                print("It's weekend, Relax and study")
        case .sunday:
                print("It's weekend, Relax and study")
        }
}

func navigate(to direction: CompassDirection) {
        switch direction {
        case .north:
                print("Go to north")
        case .south:
                print("Go to south")
        case .east:
                print("Go to east")
        case .west:
                print("Go to west")
        }
}

shareYourStatus(on: .monday)
shareYourStatus(on: .sunday)

navigate(to: .north)
navigate(to: .west)