let x = UnsafeMutablePointer<Int>.allocate(capacity: MemoryLayout.size(ofValue: Int()))
defer {
    x.deallocate()
}
if x == nil {
    print("Allocation Failed.")
} else {
    x.pointee = 57
    print("*x = \(x.pointee)")
}

// Swift에서는 기본적으로 배열은 동적 할당으로 이루어짐
// Swift애서는 포인터 사용을 권장하지 않음
// 이는 Swift에서 optional을 제공하는 이유와 같음
// 예상치 못한 동작을 방지하기 위함
