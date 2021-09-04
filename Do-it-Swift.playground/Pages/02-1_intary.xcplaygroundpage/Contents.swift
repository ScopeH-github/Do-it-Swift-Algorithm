let n = 5

var a: [Int] = []

let dataSample = [10, 73, 2, -5, 42]

for i in 0..<n {
    print("a[\(i)] : ", terminator: "")
    print(dataSample[i])
    a.append(dataSample[i])
}

print("Elements")
for i in 0..<n {
    print("a[\(i)] = \(a[i])")
}
