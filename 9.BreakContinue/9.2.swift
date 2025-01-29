// 9.2. Write a program that prints all odd numbers between 1 and 20.

for value in 1...20 {
        if value % 2 == 0 {
                // for skipping
                continue
        }

        print(value, terminator: " ")
}

print("")
