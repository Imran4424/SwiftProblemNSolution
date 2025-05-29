
// parameters no return type
// this is just another syntax
let add: (Int, Int) -> () = { (x, y) in // naming the parameters
    
    print("Additon is:", x + y)
}

let message = { (text: String) in // naming the parameters

    print(text)
}

add(7, 12)

message("I am a Programmer")
