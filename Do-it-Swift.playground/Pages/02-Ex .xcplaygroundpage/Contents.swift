//MARK: - Q1
func minOf(array: [Int]) -> Int {
    var min = array[0]
    for i in 1..<array.count {
        array[i] < min ? min = array[i] : ()
    }
    return min
}

var height1 :  [Int] = []
var number1: Int

print("Number of people :", terminator: " ")
number1 = 5
print(number1)
print("Enter height of each \(number1) people.")
for i in 0..<number1 {
    print("height[\(i)] : ", terminator : "")
    height1.append(Int.random(in: 130...190))
    print(height1[i])
}
print("Minimum value is \(minOf(array: height1)).")
print()

//MARK: - Q2
func sumOf(array: [Int]) -> Int {
    var sum = array[0]
    for i in 1..<array.count {
        sum += array[i]
    }
    return sum
}

var height2 :  [Int] = []
var number2: Int

print("Number of people :", terminator: " ")
number2 = 5
print(number2)
print("Enter height of each \(number2) people.")
for i in 0..<number2 {
    print("height[\(i)] : ", terminator : "")
    height2.append(Int.random(in: 130...190))
    print(height2[i])
}
print("Sum of values is \(sumOf(array: height2)).")
print()

//MARK: - Q3
func aveOf(array: [Int]) -> Double {
    var ave = Double(array[0])
    for i in 1..<array.count {
        ave += Double(array[i])
    }
    ave /= Double(array.count)
    return ave
}

var height3 :  [Int] = []
var number3: Int

print("Number of people :", terminator: " ")
number3 = 5
print(number3)
print("Enter height of each \(number3) people.")
for i in 0..<number3 {
    print("height[\(i)] : ", terminator : "")
    height3.append(Int.random(in: 130...190))
    print(height3[i])
}
print("Average of values is \(aveOf(array: height3)).")
print()

//MARK: - Q4
func maxOf(array: [Int]) -> Int {
    var max = array[0]
    for i in 1..<array.count {
        array[i] > max ? max = array[i] : ()
    }
    return max
}

var height4 : [Int] = []
var number4: Int

print("Number of people :", terminator: " ")
number4 = Int.random(in: 5...20)
print(number4)
print("Enter height of each \(number4) people.")
for i in 0..<number4 {
    print("height[\(i)] : ", terminator : "")
    height4.append(Int.random(in: 130...190))
    print(height4[i])
}
print("Max of values is \(maxOf(array: height4)).")
print()

//  MARK: - Q5
func swapValue<T>(_ x: Int, _ y: Int, _ a : inout [T]) { let t = a[x]; a[x] = a[y]; a[y] = t }

func aryReverse(a: inout [Int]) {
    let n = a.count
    for i in 0..<n/2 {
        for i in a {
            print(i, terminator: " ")
        }
        print()
        print("Switch: a[\(i)], a[\(n-i-1)]")
        swapValue(i, n-i-1, &a)
    }
}

var x: [Int] = []
var nx: Int

nx = Int.random(in: 3...10)
for i in 0..<nx {
    x.append(Int.random(in: -100...100))
}
aryReverse(a: &x)
for i in x {
    print(i, terminator: " ")
}
print()
print("Reversed sort complete.")
print()

//MARK: - Q6
func cardConv(x: inout UInt, n: Int, _ d: inout [Character]) -> Int {
    let dchar = "0123456789ABCDEFGHIJKLMNOPQRStUVWXYZ"
    var digits = 0
    if x == 0 {
        d[digits] = dchar[dchar.startIndex]
        digits += 1
    } else {
        while x != 0 {
            d.insert(dchar[dchar.index(dchar.startIndex, offsetBy: Int(x) % n)], at: 0)
            digits += 1
            x /= UInt(n)
        }
    }
    return digits
}

var no6: UInt
var cd6: Int
var dno6: Int
var cno6: [Character] = []
var retry6: Bool = false

print("Convert radix from decimal.")
repeat {
    no6 = UInt.random(in: 0...999)
    let entered = no6
    print("Number(non-negative): \(no6)")
    repeat {
        cd6 = Int.random(in: 1...40)
        print("Radix (2-36): \(cd6)")
    } while cd6 < 2 || cd6 > 36
    dno6 = cardConv(x: &no6, n: cd6, &cno6)
    print("\n\(entered) is ", terminator : "")
    for i in cno6 {
        print(i, terminator: "")
    }
    print(" in radix \(cd6).\n")
    let answer = Int.random(in: 0...1)
    cno6.removeAll()
    print("Retry? (1-Yes / 0-No) : \(answer)")
    if answer == 0 {
        retry6 = false
    } else {
        retry6 = true
    }
    print("\n")
} while retry6

print()


//  MARK: - Q7
import Foundation
func cardConvSpecific(x: inout UInt, n: Int, _ d: inout [Character]) -> Int {
    let dchar = "0123456789ABCDEFGHIJKLMNOPQRStUVWXYZ"
    var digits = 0
    print()
    if x == 0 {
        d[digits] = dchar[dchar.startIndex]
        digits += 1
    } else {
        while x != 0 {
            let div = String(format: "%2d", n)
            let divis = String(format: "%4d", x)
            let rem = dchar[dchar.index(dchar.startIndex, offsetBy: Int(x) % n)]
            d.insert(rem, at: 0)
            print("\(div)| \(divis) ••• \(rem)")
            print("  +------")
            digits += 1
            x /= UInt(n)
        }
        print(String(format: "%8d", x))
    }
    return digits
}

var no7: UInt
var cd7: Int
var dno7: Int
var cno7: [Character] = []
var retry7: Bool = false

print("Convert radix from decimal.")
repeat {
    no7 = UInt.random(in: 0...9999)
    let entered = no7
    print("Number(non-negative): \(no7)")
    repeat {
        cd7 = Int.random(in: 1...40)
        print("Radix (2-36): \(cd7)")
    } while cd7 < 2 || cd7 > 36
    dno7 = cardConvSpecific(x: &no7, n: cd7, &cno7)
    print("\n\(entered) is ", terminator : "")
    for i in cno7 {
        print(i, terminator: "")
    }
    print(" in radix \(cd7).\n")
    let answer = Int.random(in: 0...1)
    cno7.removeAll()
    print("Retry? (1-Yes / 0-No) : \(answer)")
    if answer == 0 {
        retry7 = false
    } else {
        retry7 = true
    }
    print("\n")
} while retry7

print()

//  MAKR: - Q8
func aryCopy(a: inout [Int], b: [Int]) {
    for i in b {
        a.append(i)
    }
}

var a8 : [Int] = []
var b8 : [Int] = []
var n8 = Int.random(in: 5...10)

for i in 0..<n8 {
    b8.append(Int.random(in: -50...50))
}
print("before")
print("array a: \(a8)")
print("array b: \(b8)")

aryCopy(a: &a8, b: b8)
print("after")
print("array a: \(a8)")
print("array b: \(b8)")
print()

// MARK: - Q9
func aryReverseCopy(a: inout [Int], b: [Int]) {
    for i in b {
        a.insert(i, at: 0)
    }
}

var a9 : [Int] = []
var b9 : [Int] = []
var n9 = Int.random(in: 5...10)

for i in 0..<n9 {
    b9.append(Int.random(in: -50...50))
}
print("before")
print("array a: \(a9)")
print("array b: \(b9)")

aryReverseCopy(a: &a9, b: b9)

print("after")
print("array a: \(a9)")
print("array b: \(b9)")
print()

//  MARK: - Q10
func shuffle(a: inout [Int]) {
    var index : [Int] = []
    while index.count != a.count {
        var temp = Int.random(in: 0...a.count-1)
        var isThere = false
        for i in index {
            if temp == i {
                isThere = true
                break
            } else {
                isThere = false
            }
        }
        if !isThere {
            index.append(temp)
        } else {
            isThere = false
        }
    }
    let b = a
    a = []
    for i in index {
        a.append(b[i])
    }
}

var a: [Int] = []
var b: [Int] = []
let acount = Int.random(in: 5...10)
for i in 0..<acount {
    a.append(Int.random(in: -50...50))
}
b = a.shuffled()    // Apple's bundled Suffle

print("before a = \(a)")
shuffle(a: &a)
print("after a = \(a)")
print("after apple_shuffle a -> b = \(b)")
