func cardConvert(x: inout UInt, n: Int, _ d: inout [Character]) -> Int {
    let dchar = "0123456789ABCDEFGHIJKLMNOPQRStUVWXYZ"
    var digits = 0
    if x == 0 {
        d[digits] = dchar[dchar.startIndex]
        digits += 1
    } else {
        while x != 0 {
            d[digits] = dchar[dchar.index(dchar.startIndex, offsetBy: Int(x) % n)]
            digits += 1
            x /= UInt(n)
        }
    }
    return digits
}
