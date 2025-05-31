
var numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]

numbers.removeAll { (number) -> Bool in
    return number < 10
}

print(numbers)