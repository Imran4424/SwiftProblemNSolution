
// Swift’s access control model is based on the concept of modules, source files, and packages.


// -----------
// A module is a single unit of code distribution — 
// 
// a framework or application that’s built and shipped as a single unit and that can be imported by 
// another module with Swift’s import keyword.

// Each build target (such as an app bundle or framework) in Xcode is treated as a separate module in Swift.

// If you group together aspects of your app’s code as a stand-alone framework — perhaps to encapsulate 
// and reuse that code across multiple applications — then everything you define within that framework 
// will be part of a separate module when it’s imported and used within an app, or when it’s used within another framework.
// -----------



// the module is an application or a framework (library)

// If we create a project with classes A and B, they are part of the same module. 
// Any other class in the same project can inherit from those classes.