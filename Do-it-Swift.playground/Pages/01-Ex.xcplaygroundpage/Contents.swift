import Foundation

//MARK: - Q1

func Q1() {
    let a = 3, b = 1, c = 4, d = 2
    print("a: \(a), b: \(b), c: \(c), d: \(d)")
    
    
    func max4(a: Int, b: Int, c: Int, d: Int) -> Int {
        var max = a
        b > max ? max = b : ()
        c > max ? max = c : ()
        d > max ? max = d : ()
        
        return max
    }
    print("max4(\(a),\(b),\(c),\(d))")
    print(max4(a: a, b: b, c: c, d: d))
}

Q1()
print()

//MARK: - Q2

func Q2() {
    let a = 3, b = 1, c = 4
    print("a: \(a), b: \(b), c: \(c)")
    
    
    func min3(a: Int, b: Int, c: Int) -> Int {
        var min = a
        b < min ? min = b : ()
        c < min ? min = c : ()
        return min
    }
    print("min3(\(a),\(b),\(c))")
    print(min3(a: a, b: b, c: c))
}

Q2()
print()

//MARK: - Q3
func Q3() {
    let a = 3, b = 1, c = 4, d = 2
    print("a: \(a), b: \(b), c: \(c), d: \(d)")
    func min4(a: Int, b: Int, c: Int, d: Int) -> Int {
        var min = a
        b < min ? min = b : ()
        c < min ? min = c : ()
        d < min ? min = d : ()
        
        return min
    }
    print("min4(\(a),\(b),\(c),\(d))")
    print(min4(a: a, b: b, c: c, d: d))
}

Q3()
print()

//MARK: - Q4
func Q4() {
    let sampleData: [(a: Int, b: Int, c: Int)] = [(3,2,1), (3,2,2), (3,1,2), (3,2,3), (2,1,3), (3,3,2), (3,3,3), (2,2,3), (2,3,1), (2,3,2), (1,3,2), (2,3,3), (1,2,3)]
    
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
}

Q4()
print()

//MARK: - Q5
func Q5() {
    let sampleData: [(a: Int, b: Int, c: Int)] = [(3,2,1), (3,2,2), (3,1,2), (3,2,3), (2,1,3), (3,3,2), (3,3,3), (2,2,3), (2,3,1), (2,3,2), (1,3,2), (2,3,3), (1,2,3)]
    
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
}

Q5()
print()
// 1C-1에서는 최악의 경우 3번만 비교하면 되지만 이번 예제의 경우 최악의 경우 10번을 비교해야 한다.

//MARK: - Q6
func Q6() {
    var i = 1, n: Int
    var sum = 0
    print("Get sum of 1 to n.")
    print("n :", terminator: " ")
    
    //MARK: - 입력이 안 되므로 따로 설정
    n = 5
    //MARK: -
    print(n)
    
    while i <= n {
        sum += i
        i += 1
        print(i) // HERE!
    }
    print("Sum of 1 to \(n) is \(sum).")
}

Q6()
print()

//MARK: - Q7
func Q7() {
    var sum = 0
    var n: Int
    
    print("Get Sum of 1 to n")
    print("n :", terminator: " ")
    n = 7
    print(n)
    
    for i in 1...n {
        print(i, terminator: i == n ? " = " : " + ")
        sum += i
    }
    print(sum)
}

Q7()
print()

//MARK: - Q8
func Q8() {
    var sum = 0
    var n: Int
    
    print("Get sum of 1 to n")
    print("n :", terminator: " ")
    n = 10
    print(n)
    sum = (1 + n) * n / 2
    print("Sum of 1 to \(n) = \(sum)")
}
Q8()
print()

//MARK: - Q9
func Q9() {
    var num1, num2 : Int
    var sum = 0
    
    print("get sum from a to b.")
    print("a: ", terminator: ""); num1 = 3; print(num1)
    print("b: ", terminator: ""); num2 = 10; print(num2)
    
    for i in num1...num2 {
        sum += i
    }
    print(sum)
}

Q9()
print()

//MARK: - Q10
func Q10() {
    
    
    
    var aQ10: Int
    var bQ10: Int
    var tmp = 0
    var arr = [6, 3, 9]
    
    print("a: ", terminator: ""); aQ10 = 6; print(aQ10)
    repeat {
        print("b: ", terminator: ""); bQ10 = arr[tmp]; print(bQ10)
        if aQ10 >= bQ10 {
            print("Input value must be greater than a!")
        }
        tmp += 1
    } while aQ10 >= bQ10
    print("b - a = \(bQ10 - aQ10)")
}

Q10()
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

//MARK: - Q15
var height: Int
var width: Int
print("height :", terminator: " ")
height = 3
print(height)
print("width :", terminator: " ")
width = 7
print(width)
for i in 1...height {
    for j in 1...width {
        print("*", terminator: "  ")
    }
    print()
}
print()

//MARK: - Q16
var n16: Int

repeat {
    print("How much layers do you want : ", terminator: "")
    
    n16 = 5
    print(n16)
    
} while n16 <= 0


// bottom-left lb
func triangleLB(n: Int) {
    for i in 1...n {
        for _ in 1...i {
            print("*", terminator: "  ")
        }
        print()
    }
}

//top-left
func triangleLU(n: Int) {
    for i in stride(from: n, to: 0, by: -1) {
        for _ in 1...i {
            print("*", terminator: "  ")
        }
        print()
    }
}

//top-right
func triangleRU(n: Int) {
    for i in 1...n {
        for _ in stride(from: n+1-i, to: 0, by: -1) {
            print("*", terminator: "  ")
        }
        print()
        for _ in 1...i {
            print(" ", terminator: "  ")
        }
    }
    print()
}

// bottom-right
func triangleRB(n: Int) {
    for i in 1...n {
        for _ in stride(from: n, to: i, by: -1) {
            print(" ", terminator: "  ")
            
        }
        for _ in 1...i {
            print("*", terminator: "  ")
        }
        print()
    }
}

triangleLB(n: n16)
print()
triangleLU(n: n16)
print()
triangleRU(n: n16)
triangleRB(n: n16)
print("\n")

//MARK: - Q17
func spira(n: Int) {
    for i in 1...n {
        for _ in stride(from: n, to: i, by: -1) {
            print(" ", terminator: "  ")
        }
        var starCount = (i - 1) * 2 + 1
        for _ in 1...starCount {
            print("*", terminator: "  ")
        }
        print()
    }
}

var n17: Int

repeat {
    print("How much layers do you want : ", terminator: "")
    
    n17 = 5
    print(n17)
    
} while n17 <= 0
spira(n: n17)
print("\n")

