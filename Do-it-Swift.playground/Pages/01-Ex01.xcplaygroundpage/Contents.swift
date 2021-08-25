let a = 3, b = 1, c = 4, d = 2

func max4(a: Int, b: Int, c: Int, d: Int) -> Int {
    var max = a
    b > max ? max = b : ()
    c > max ? max = c : ()
    d > max ? max = d : ()
    
    return max
}

func min4(a: Int, b: Int, c: Int, d: Int) -> Int {
    var min = a
    b < min ? min = b : ()
    c < min ? min = c : ()
    d < min ? min = d : ()
    
    return min
}

print("a: \(a), b: \(b), c: \(c), d: \(d)")
print(max4(a: a, b: b, c: c, d: d))
print(min4(a: a, b: b, c: c, d: d))
