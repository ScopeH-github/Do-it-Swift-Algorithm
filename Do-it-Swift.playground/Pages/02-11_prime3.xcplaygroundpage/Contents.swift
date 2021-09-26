var i, n: Int
var prime = [2]
prime.append(3)
var counter: UInt = 0
    
n = 5
while n <= 1000 {
    var flag = false
    i = 1
    counter += 1
    while prime[i] * prime[i] <= n {
        counter += 1
        if n % prime[i] == 0 {
            flag = true
            break
        }
        counter += 1
        i += 1
    }
    if !flag {
        prime.append(n)
    }
    
    n += 2
}

for i in prime {
    print(i)
}
print("Number of mul and div operation: \(counter)")
