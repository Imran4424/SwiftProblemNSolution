

enum CompassDirection: String {
        case north
        case south
        case east
        case west
}


func navigate(to direction: CompassDirection) {
        // printingthe raw value of given direction
        print("Implicit raw value: \(direction.rawValue)")
        
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

        print()
}

navigate(to: .north)
navigate(to: .west)