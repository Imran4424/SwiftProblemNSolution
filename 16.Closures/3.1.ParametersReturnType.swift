

// parameters return type
// this is just another syntax for closures
let add = { (x: Int, y: Int) -> Int in 
    return x + y
}

print("Addition is:", add(12, 13))