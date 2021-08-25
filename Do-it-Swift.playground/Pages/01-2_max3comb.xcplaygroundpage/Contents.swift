func max3(a: Int, b: Int, c: Int) -> Int {
    var max = a
    b > max ? max = b : ()
    c > max ? max = c : ()
    
    return max
}

let sampleData: [(a: Int, b: Int, c: Int)] = [(3,2,1), (3,2,2), (3,1,2), (3,2,3), (2,1,3), (3,3,2), (3,3,3), (2,2,3), (2,3,1), (2,3,2), (1,3,2), (2,3,3), (1,2,3)]

for value in sampleData {
    print("max3(\(value.a),\(value.b),\(value.c)) = \(max3(a: value.a, b: value.b, c: value.c))")
}
