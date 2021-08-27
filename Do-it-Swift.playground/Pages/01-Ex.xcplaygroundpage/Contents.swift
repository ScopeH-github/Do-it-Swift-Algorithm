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


let sampleData: [(a: Int, b: Int, c: Int)] = [(3,2,1), (3,2,2), (3,1,2), (3,2,3), (2,1,3), (3,3,2), (3,3,3), (2,2,3), (2,3,1), (2,3,2), (1,3,2), (2,3,3), (1,2,3)]
//MARK: - Q4
func med3(a: Int, b: Int, c: Int) -> Int {
    if a >= b {
        if b >= c {
            return b
        } else if a <= c {
            return a
        } else {
            return c
        }
    } else if a > c {
        return a
    } else if b > c {
        return c
    } else {
        return b
    }
}
for (a, b, c) in sampleData {
    print("med3(\(a),\(b),\(c)) = \(med3(a: a, b: b, c: c))")
}

//MARK: - Q5
func med3alt(a: Int, b: Int, c: Int) -> Int {
    if (b >= a && c <= a) || (b <= a && c >= a) {
        return a
    } else if (a > b && c < b) || (a < b && c < b) {
        return b
    }
    return c
}

for (a, b, c) in sampleData {
    print("med3alt(\(a),\(b),\(c)) = \(med3alt(a: a, b: b, c: c))")
}
// 1C-1에서는 최악의 경우 3번만 비교하면 되지만 이번 예제의 경우 최악의 경우 10번을 비교해야 한다.
