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
func aveOf(array: [Int]) -> Int {
    var ave = array[0]
    for i in 1..<array.count {
        ave += array[i]
    }
    ave /= array.count
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


