//MARK: - Q1
func Q1() {
    
    func minOf(array: [Int]) -> Int {
        var min = array[0]
        for i in 1..<array.count {
            array[i] < min ? min = array[i] : ()
        }
        return min
    }
    
    var height :  [Int] = []
    var number: Int
    
    print("Number of people :", terminator: " ")
    number = 5
    print(number)
    print("Enter height of each \(number) people.")
    for i in 0..<number {
        print("height[\(i)] : ", terminator : "")
        height.append(Int.random(in: 130...190))
        print(height[i])
    }
    print("Minimum value is \(minOf(array: height)).")
}

runEx(Q: 1, Q1)

//MARK: - Q2
func Q2() {
    
    func sumOf(array: [Int]) -> Int {
        var sum = array[0]
        for i in 1..<array.count {
            sum += array[i]
        }
        return sum
    }
    
    var height :  [Int] = []
    var number: Int
    
    print("Number of people :", terminator: " ")
    number = 5
    print(number)
    print("Enter height of each \(number) people.")
    for i in 0..<number {
        print("height[\(i)] : ", terminator : "")
        height.append(Int.random(in: 130...190))
        print(height[i])
    }
    print("Sum of values is \(sumOf(array: height)).")
}

runEx(Q: 2, Q2)

//MARK: - Q3
func Q3() {
    
    func aveOf(array: [Int]) -> Double {
        var ave = Double(array[0])
        for i in 1..<array.count {
            ave += Double(array[i])
        }
        ave /= Double(array.count)
        return ave
    }
    
    var height :  [Int] = []
    var number: Int
    
    print("Number of people :", terminator: " ")
    number = 5
    print(number)
    print("Enter height of each \(number) people.")
    for i in 0..<number {
        print("height[\(i)] : ", terminator : "")
        height.append(Int.random(in: 130...190))
        print(height[i])
    }
    print("Average of values is \(aveOf(array: height)).")
}

runEx(Q: 4, Q4)

//MARK: - Q4
func Q4() {
    
    func maxOf(array: [Int]) -> Int {
        var max = array[0]
        for i in 1..<array.count {
            array[i] > max ? max = array[i] : ()
        }
        return max
    }
    
    var height : [Int] = []
    var number: Int
    
    print("Number of people :", terminator: " ")
    number = Int.random(in: 5...20)
    print(number)
    print("Enter height of each \(number) people.")
    for i in 0..<number {
        print("height[\(i)] : ", terminator : "")
        height.append(Int.random(in: 130...190))
        print(height[i])
    }
    print("Max of values is \(maxOf(array: height)).")
}

runEx(Q: 4, Q4)

//  MARK: - Q5
func Q5() {
    
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
}
runEx(Q: 5, Q5)

//MARK: - Q6
func Q6() {
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
    
    var n: UInt
    var cd: Int
    var dno: Int
    var cno: [Character] = []
    var retry: Bool = false
    
    print("Convert radix from decimal.")
    repeat {
        n = UInt.random(in: 0...999)
        let entered = n
        print("Number(non-negative): \(n)")
        repeat {
            cd = Int.random(in: 1...40)
            print("Radix (2-36): \(cd)")
        } while cd < 2 || cd > 36
        dno = cardConv(x: &n, n: cd, &cno)
        print("\n\(entered) is ", terminator : "")
        for i in cno {
            print(i, terminator: "")
        }
        print(" in radix \(cd).\n")
        let answer = Int.random(in: 0...1)
        cno.removeAll()
        print("Retry? (1-Yes / 0-No) : \(answer)")
        if answer == 0 {
            retry = false
        } else {
            retry = true
        }
        print("\n")
    } while retry
}

runEx(Q: 6, Q6)

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
print()

// MARK: - Q11
let mdays = [
    [31,28,31,30,31,30,31,31,30,31,30,31],
    [31,29,31,30,31,30,31,31,30,31,30,31]
]

var year, month, day: Int
var retry = false
repeat {
    year = Int.random(in: 1900...2099)
    month = Int.random(in: 1...12)
    day = Int.random(in: 1...31)
    if month == 2 {
        if (day > 28 && isLeap(year: year) == 0) {
            day = 28
        } else if (day > 29 && isLeap(year: year) == 1) {
            day = 29
        } 
    } else if month == 4 || month == 6 || month == 9 || month == 11 {
        if day > 30 {
            day = 30
        }
    }
    print("year: \(year)")
    print("month: \(month)")
    print("day: \(day)")
    
    print("=> \(dayOfYear(y: year, m: month, d: day)) day of \(year)")
    
    let input = Int.random(in: 0...1)
    retry = input == 1
    print("Retry? (1 - Yes / 0 - No) : \(input)")
} while retry
print()

func isLeap(year: Int) -> Int {
    year % 4 == 0 && year % 100 != 0 || year % 400 == 0 ? 1 : 0
}

func dayOfYear(y: Int, m: Int, d: Int) -> Int {
    var partMdays: [Int] = []
    var month = 0
    while month < m - 1 {
        partMdays.append(mdays[isLeap(year: y)][month])
        month += 1
    }
    return partMdays.reduce(0, { $0 + $1 }) + d
}


//  MARK: - Q12
func Q12() {
    
    let VMAX = 21
    
    struct PhysCheck {
        var name: String
        var height: Int
        var vision: Double
    }
    
    func aveHeight(dat: [PhysCheck]) -> Double {
        var sum = 0.0
        for i in dat {
            sum += Double(i.height)
        }
        return sum / Double(dat.count)
    }
    
    func distVision(dat: [PhysCheck], dist: inout [Int]) {
        for i in 0..<VMAX {
            dist[i] = 0
        }
        for i in 0..<dat.count {
            if dat[i].vision >= 0.0 && dat[i].vision <= Double(VMAX)/10.0 {
                dist[Int(dat[i].vision * 10)] += 1
            }
        }
    }
    
    let x: [PhysCheck] = [
        PhysCheck(name: "Sonic", height: 162, vision: 0.3),
        PhysCheck(name: "Tails", height: 173, vision: 0.7),
        PhysCheck(name: "Knux", height: 175, vision: 2.0),
        PhysCheck(name: "Shadow", height: 171, vision: 1.5),
        PhysCheck(name: "Rouge", height: 168, vision: 0.4),
        PhysCheck(name: "Blaze", height: 174, vision: 1.2),
        PhysCheck(name: "Silver", height: 169, vision: 0.8),
        PhysCheck(name: "Marine", height: 161, vision: 2.0)
    ]
    var vdist: [Int] = Array(repeating: 0, count: VMAX)
    print("========== Physical Check Table ==========")
    print("\("Name".padding(toLength: 10, withPad: " ", startingAt: 0))\t\("Height".padding(toLength: 10, withPad: " ", startingAt: 0))\t\("Vision".padding(toLength: 10, withPad: " ", startingAt: 0))")
    for i in x {
        print("\("\(i.name)".padding(toLength: 10, withPad: " ", startingAt: 0))\t\(String(format: "%10d", i.height ))\t\(String(format: "%10.1f", i.vision))")
    }
    print("averageHeight: \(String(format: "%5.1f cm", aveHeight(dat: x)))")
    distVision(dat: x, dist: &vdist)
    print("Dist of Vision")
    for i in 0..<VMAX {
        print("\(String(format:"%3.1f", Double(i)/10.0)) ~ : ", terminator: "")
        for j in 0..<vdist[i] {
            print("*", terminator: "")
        }
        print()
    }
}

Q12()
print()

//  MARK: - Q13
func Q13() {
    struct Date {
        var y: Int
        var m: Int
        var d: Int
    }
    
    func dateOf(y: Int, m: Int, d: Int) -> Date {
        return Date(y: y, m: m, d: d)
    }
    
    func after(x: Date, n: Int) -> Date {
        var year: Int = 0
        var month: Int = 0
        var date: Int = 0
        let dateFrm = DateFormatter()
        dateFrm.dateFormat = "yyyy-M-d"
        let calendar = Calendar.current
        let initialDate = dateFrm.date(from: "\(x.y)-\(x.m)-\(x.d)")!
        let day = DateComponents(day: n)
        if let dayAfterN = calendar.date(byAdding: day, to: initialDate) {
            let dateAterFrm = calendar.dateComponents([.year, .month, .day], from: dayAfterN)
            year = Int(dateAterFrm.year!)
            month = Int(dateAterFrm.month!)
            date = Int(dateAterFrm.day!)
        }
        return Date(y: year, m: month, d: date)
    }
    
    func before(x: Date, n: Int) -> Date {
        var year: Int = 0
        var month: Int = 0
        var date: Int = 0
        let dateFrm = DateFormatter()
        dateFrm.dateFormat = "yyyy-M-d"
        let calendar = Calendar.current
        let initialDate = dateFrm.date(from: "\(x.y)-\(x.m)-\(x.d)")!
        let day = DateComponents(day: -n)
        if let dayBeforeN = calendar.date(byAdding: day, to: initialDate) {
            let dateAterFrm = calendar.dateComponents([.year, .month, .day], from: dayBeforeN)
            year = Int(dateAterFrm.year!)
            month = Int(dateAterFrm.month!)
            date = Int(dateAterFrm.day!)
        }
        return Date(y: year, m: month, d: date)
    }
    
    let date = dateOf(y: 2021, m: 09, d: 28)
    print(date)
    print(after(x: date, n: 7))
    print(before(x: date, n: 7))
}
Q13()
print()
