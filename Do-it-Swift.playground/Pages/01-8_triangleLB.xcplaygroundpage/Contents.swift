var n: Int

repeat {
    print("How much layers do you want : ", terminator: "")

    n = 5
    print(n)
    
} while n <= 0

for i in 1...n {
    for _ in 1...i {
        print("*", terminator: "  ")
    }
    print()
}

