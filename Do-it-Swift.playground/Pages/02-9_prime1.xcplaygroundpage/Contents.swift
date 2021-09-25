var i, n: Int
var counter: UInt = 0

n = 2
i = 2
while n <= 1000 {
    while i < n {
        counter += 1
        if n % i == 0 {
            break
        }
        i += 1
    }
    if n == i {
        print(n)
    }
    n += 1
    i = 2
}
print("number of division: \(counter)")

