var na: Int
print("Number of Elements:", terminator: " ")
na = 4
print(na)

let a = UnsafeMutablePointer<Int>.allocate(capacity: na * MemoryLayout.size(ofValue: Int()))
defer {
    a.deallocate()
}

let sampledata = [10, 73, 2, -5]

if a == nil {
    print("Allocation Failed")
} else {
    print("Enter the \(na) numbers")
    for i in 0..<na {
        print("a[\(i)] :", terminator: " ")
        a[i] = sampledata[i]
        print(sampledata[i])
    }
    
    print("Elements Values are:")
    for i in 0..<na {
        print("a[\(i)] = \(a[i])")
    }
}
