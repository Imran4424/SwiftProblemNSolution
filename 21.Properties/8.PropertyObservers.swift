
/**  
        Property Observer

        Property observers observe and respond to changes in a property’s value. Property 
        observers are called every time a property’s value is set, even if the new value 
        is the same as the property’s current value.

        property observer can be applied to, stored properties (exception lazy stored property)

        property observers can also be applied to any inherited property (both stored or computed)  by overriding the 
        property within a subclass

        there are two property observers in swift
                willSet
                didSet

        willSet is called just before the value is stored.
        didSet is called immediately after the new value is stored.

        visit for more: https://docs.swift.org/swift-book/LanguageGuide/Properties.html
*/

class StepCounter {
        var totalSteps: Int = 0 {
                // default parameter name is newValue
                // here "newTotalSteps" is the constant parameter name given by willSet
                willSet(newTotalSteps) {
                        print("Now the current value is:", totalSteps)
                        print("About to set totalSteps to \(newTotalSteps)")
                }

                // default parameter name is oldValue
                // here no constant parameter name is given didSet, so, default will be used
                didSet {
                        if totalSteps > oldValue  {
                                print("Added \(totalSteps - oldValue) steps")
                        }
                }
        }
}
    
let stepCounter = StepCounter()

stepCounter.totalSteps = 200
// Now the current value is: 0
// About to set totalSteps to 200
// Added 200 steps

print("")

stepCounter.totalSteps = 360
// Now the current value is: 200
// About to set totalSteps to 360
// Added 160 steps

print("")

stepCounter.totalSteps = 896
// Now the current value is: 360
// About to set totalSteps to 896
// Added 536 steps