func cardConvert(x: inout UInt, n: Int, _ d: inout [Character]) -> Int {
    let dchar = "0123456789ABCDEFGHIJKLMNOPQRStUVWXYZ"
    var digits = 0
    if x == 0 {
        d[digits] = dchar[dchar.startIndex]
        digits += 1
    } else {
        while x != 0 {
            d.append(dchar[dchar.index(dchar.startIndex, offsetBy: Int(x) % n)])
            digits += 1
            x /= UInt(n)
        }
    }
    return digits
}

var number: UInt
var cd: Int
var digitno: Int
var cno: [Character] = []
var retry: Bool = false

print("Convert radix from decimal.")
repeat {
    number = UInt.random(in: 0...999)
    let entered = number
    print("Number(non-negative): \(number)")
    repeat {
        cd = Int.random(in: 1...40)
        print("Radix (2-36): \(cd)")
    } while cd < 2 || cd > 36
    digitno = cardConvert(x: &number, n: cd, &cno)
    print("\n\(entered) is ", terminator : "")
    for i in stride(from: digitno-1, to: -1, by: -1) {
        print(cno[i], terminator: "")
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
