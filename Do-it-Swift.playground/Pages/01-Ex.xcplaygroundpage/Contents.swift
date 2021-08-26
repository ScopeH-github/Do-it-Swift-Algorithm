let a = 3, b = 1, c = 4, d = 2
print("a: \(a), b: \(b), c: \(c), d: \(d)")

//MARK: - Q1

func max4(a: Int, b: Int, c: Int, d: Int) -> Int {
    var max = a
    b > max ? max = b : ()
    c > max ? max = c : ()
    d > max ? max = d : ()
    
    return max
}
print("max4(\(a),\(b),\(c),\(d))")
print(max4(a: a, b: b, c: c, d: d))

//MARK: - Q2
func min3(a: Int, b: Int, c: Int) -> Int {
    var min = a
    b < min ? min = b : ()
    c < min ? min = c : ()
    return min
}
print("min3(\(a),\(d),\(c))")
print(min3(a: a, b: d, c: c))

//MARK: - Q3
func min4(a: Int, b: Int, c: Int, d: Int) -> Int {
    var min = a
    b < min ? min = b : ()
    c < min ? min = c : ()
    d < min ? min = d : ()
    
    return min
}
print("min4(\(a),\(b),\(c),\(d))")
print(min4(a: a, b: b, c: c, d: d))


