var a, b, c : Int

//MARK: - 입력이 불가능하므로 사전 설정
a = 1
b = 3
c = 2
//MARK: -

print("Get middle value among three Integer number.")
print("a : \(a)")
print("b : \(b)")
print("c : \(c)")

print("medium Value : \(med3(a: a, b: b, c: c))")

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
