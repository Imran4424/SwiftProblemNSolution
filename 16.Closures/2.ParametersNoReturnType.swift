
// parameters no return type

let add: (Int, Int) -> () = { (x, y) in // naming the parameters
    
    print("Additon is:", x + y)
}

// this is just another syntax of closures
// let add: (Int, Int) -> () = { (x, y) in // naming the parameters
    
//     print("Additon is:", x + y)
// }

let message: (String) -> () = { text in // naming the parameters
    
    print(text)
}

// this is just another syntax of closures
// let message = { (text: String) in // naming the parameters

//     print(text)
// }

add(7, 12)

message("I am a Programmer")
