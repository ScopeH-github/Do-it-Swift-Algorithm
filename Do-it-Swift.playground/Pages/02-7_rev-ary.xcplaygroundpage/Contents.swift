func swapValue<T>(_ x: Int, _ y: Int, _ a : inout [T]) { let t = a[x]; a[x] = a[y]; a[y] = t }

func aryReverse(a: inout [Int]) {
    let n = a.count
    for i in 0..<n/2 {
        swapValue(i, n-i-1, &a)
    }
}

var x: [Int] = []
var nx: Int

print("Number of Element: ", terminator: "")
nx = Int.random(in: 3...10)
print(nx)
print("Enter \(nx) integer number(s)...")
for i in 0..<nx {
    x.append(Int.random(in: -100...100))
    print("x[\(i)] : \(x[i])")
}
aryReverse(a: &x)
print("Reversed sort complete.")
for i in 0..<nx {
    print("x[\(i)] = \(x[i])")
}

