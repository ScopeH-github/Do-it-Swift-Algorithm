import Foundation

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
print()

//MARK: - Q2
func min3(a: Int, b: Int, c: Int) -> Int {
    var min = a
    b < min ? min = b : ()
    c < min ? min = c : ()
    return min
}
print("min3(\(a),\(d),\(c))")
print(min3(a: a, b: d, c: c))
print()

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
print()

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
print()

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
print()
// 1C-1에서는 최악의 경우 3번만 비교하면 되지만 이번 예제의 경우 최악의 경우 10번을 비교해야 한다.

//MARK: - Q6
var iQ6 = 1, nQ6: Int
var sumQ6 = 0
print("Get sum of 1 to n.")
print("n :", terminator: " ")

//MARK: - 입력이 안 되므로 따로 설정
nQ6 = 5
//MARK: -
print(nQ6)

while iQ6 <= nQ6 {
    sumQ6 += iQ6
    iQ6 += 1
    print(iQ6) // HERE!
}
print("Sum of 1 to \(nQ6) is \(sumQ6).")
print()

//MARK: - Q7
var sumQ7 = 0
var nQ7: Int

print("Get Sum of 1 to n")
print("n :", terminator: " ")
nQ7 = 7
print(nQ7)

for i in 1...nQ7 {
    print(i, terminator: i == nQ7 ? " = " : " + ")
    sumQ7 += i
}
print(sumQ7)
print()

//MARK: - Q8
var sumQ8 = 0
var nQ8: Int

print("Get sum of 1 to n")
print("n :", terminator: " ")
nQ8 = 10
print(nQ8)
sumQ8 = (1 + nQ8) * nQ8 / 2
print("Sum of 1 to \(nQ8) = \(sumQ8)")
print()

//MARK: - Q9
var num1, num2 : Int
var sumQ9 = 0

print("get sum from a to b.")
print("a: ", terminator: ""); num1 = 3; print(num1)
print("b: ", terminator: ""); num2 = 10; print(num2)

for i in num1...num2 {
    sumQ9 += i
}
print(sumQ9)
print()

//MARK: - Q10
var aQ10: Int
var bQ10: Int
var tmp = 0
var arr = [6, 3, 9]

print("a: ", terminator: ""); aQ10 = 6; print(aQ10)
repeat {
    print("b: ", terminator: ""); bQ10 = arr[tmp]; print(bQ10)
    if aQ10 >= bQ10 {
        print("Input value greater than a!")
    }
    tmp += 1
} while aQ10 >= bQ10
print("b - a = \(bQ10 - aQ10)")
print()

//MARK: - Q11
var nQ11: Int
let sample = [-23, 0, 102319, 7]
var index = 0
var count = 0

repeat {
    print("n : ", terminator: "")
    nQ11 = sample[index]
    print(nQ11)
    if nQ11 <= 0 {
        print("Try again: Number should be greater than 0.")
    }
    index += 1
} while nQ11 <= 0

while nQ11 % Int(pow(10, Double(count))) < nQ11 {
    count += 1
}

print("\(nQ11) is \(count) digit(s) number.")
print()

//MARK: - Q12

print("  ", terminator: "|")
for i in 1...9 {
    print(String(format: "%3d", i), terminator: "")
}
print()
for i in 0...9 {
    print("--", terminator: i == 0 ? "+" : "-")
}
print()
for i in 1...9 {
    print(String(format:"%2d", i), terminator: "|")
    for j in 1...9 {
        print(String(format: "%3d", i*j), terminator: "")
    }
    print()
}
print()

//MARK: - Q13
print("  ", terminator: "|")
for i in 1...9 {
    print(String(format: "%3d", i), terminator: "")
}
print()
for i in 0...9 {
    print("--", terminator: i == 0 ? "+" : "-")
}
print()
for i in 1...9 {
    print(String(format:"%2d", i), terminator: "|")
    for j in 1...9 {
        print(String(format: "%3d", i+j), terminator: "")
    }
    print()
}
print()

//MARK: - Q14
var nQ13: Int

print("n : ", terminator: "")
nQ13 = 4
print(nQ13)
for i in 1...nQ13 {
    for j in 1...nQ13 {
        print("*", terminator: "  ")
    }
    print()
}
print()

