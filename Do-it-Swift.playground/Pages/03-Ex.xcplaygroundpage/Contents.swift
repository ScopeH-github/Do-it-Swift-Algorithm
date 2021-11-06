import Foundation

//  MARK: - Q1 
func Q1() {
    func search(a: [Int], key: Int) -> Int? {
        var aTemp = a
        aTemp.append(key)
        for i in 0..<aTemp.count {
            if aTemp[i] == key {
                return i == a.count ? nil : i
            }
        }
        return nil
    }
    
    var nx, ky: Int
    var idx: Int?
    print("sentinel linear search")
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
}

runEx(Q: 1, Q1)

// MARK: - Q2
func Q2() {
    func search(a: [Int], key: Int) -> Int? {
        var index : Int? = nil
        var aTemp = a
        aTemp.append(key)
        print("   ", terminator: "|")
        for i in 0..<a.count {
            print("\(String(format: "%2d", i))", terminator: " ")
        }
        print()
        print("---", terminator: "+")
        for i in 0..<a.count {
            print("--", terminator: "-")
        }
        print()
        for i in 0..<aTemp.count {
            print("   |", terminator: "")
            if i > 0 {
                for _ in 0..<i {
                    print("  ", terminator: " ")
                }
            }
            if i < a.count {
                print(" *")
            } else {
                print()
            }
            print(String(format: "%2d ", i), terminator: "|")
            for j in a {
                print(String(format: "%2d", j), terminator: " ")
            }
            print()
            if aTemp[i] == key {
                index = (i == a.count ? nil : i)
                break
            }
        }
        return index
    }
    
    let testArray = [1, 4, 3, 7, 5, 9, 0, 2]
    let searchKey = -5
    let key = search(a: testArray, key: searchKey)
    if key == nil {
        print("Search Failed.")
    } else {
        print("\(searchKey) is on x[\(key!)].")
    }
}

runEx(Q: 2, Q2)

//  MARK: - Q3
func Q3() {
    func searchIdx(_ a: [Int], key: Int, index: inout [Int]) -> Int {
        var aTemp = a
        aTemp.append(key)
        for i in 0..<aTemp.count {
            if aTemp[i] == key && i != a.count {
                index.append(i)
            }
        }
        return index.count
    }
    
    let test = [1, 9, 2, 9, 4, 5, 6, 9]
    let key = 9
    var index : [Int] = []
    let number = searchIdx(test, key: key, index: &index)
    print(test)
    print("\(key) are(is) \(number) in this array, on \(index).")
}

runEx(Q: 3, Q3)
