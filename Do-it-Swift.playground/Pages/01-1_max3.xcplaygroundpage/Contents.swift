var a, b, c: Int

//: Playground에는 입력 기능이 없으므로 여기서 필요한 값을 미리 세팅
a = 1
b = 3
c = 2
// ---

var max: Int
print("Get Maximum value among 3 Integer numbers.")
print("a: \(a)")
print("b: \(b)")
print("c: \(c)")
max = a
b > max ? max = b : ()
c > max ? max = c : ()

print("Maximum is \(max).")
