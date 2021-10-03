func search(a: [Int], key: Int) -> Int? {
    for i in 0..<a.count {
        if a[i] == key {
            return i
        }
    }
    return nil
}


var nx, ky: Int
var idx: Int?
print("linear search")
let nxInput = Int.random(in: 4...8)
nx = nxInput
print("Count of elements: \(nx)")
var x : [Int] = []
for i in 0..<nx {
    let elInput = Int.random(in: 0...15)
    x.append(elInput)
    print("x[\(i)] = \(x[i])")
}
let kyInput = Int.random(in: 0...10)
ky = kyInput
print("Search Key : \(ky)")
idx = search(a: x, key: ky)
if idx == nil {
    print("Search Failed.")
} else {
    if let index = idx {
        print("\(ky) is at x[\(index)].")
    }
}
