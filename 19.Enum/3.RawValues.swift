
enum CompassDirection: String {
        case north = "Compass is pointing to the north"
        case south = "Compass is pointing to the south"
        case east = "Compass is pointing to the east"
        case west = "Compass is pointing to the west"
}


func navigate(to direction: CompassDirection) {
        // printingthe raw value of given direction
        print(direction.rawValue)
        
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