
/** 
        Computed Properties

        Read Only computed property
*/

class Box {
        var length: Double
        var width: Double
        var height: Double

        // last time we used function for area
        // now we are using read only computed properties
        var area: Double {
                return length * width
        }

        // last time we used function for volume
        // now we are using read only computed properties
        var volume: Double {
                return length * width * height
        }

        // as you can see
        // computed property don't need any init method
        init() {
                length = 0.0
                width = 0.0
                height = 0.0
        }

        init(length: Double, width: Double, height: Double) {
                self.length = length
                self.width = width
                self.height = height
        }
}

var red = Box()

print("Red Box's area is: \(red.area)")
print("Red Box's volume is: \(red.volume)")

var green = Box(length: 12.0, width: 8, height: 4)

print("Green Box's area is: \(green.area)")
print("Green Box's volume is: \(green.volume)")