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
}
print("Sum of 1 to \(n) is \(sum).")
