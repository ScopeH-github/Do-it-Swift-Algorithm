var i, n: Int
var prime: [Int] = []
var ptr = 0
var counter: UInt = 0

prime.append(2)
ptr += 1
n = 3
while n <= 1000 {
    i = 1
    while i < ptr {
        counter += 1
        if n % prime[i] == 0 {
            break
        }
        i += 1
    }
    if ptr == i {
        prime.append(n)
        ptr += 1
    }
    n += 2    // only check odd number
}
for i in 0..<ptr {
    print(prime[i])
}
print("number of division: \(counter)")
