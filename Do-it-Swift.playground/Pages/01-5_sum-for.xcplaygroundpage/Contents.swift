var n: Int
var sum = 0
print("Get sum of 1 to n.")
print("n :", terminator: " ")

//MARK: - 입력이 안 되므로 따로 처리
n = 5
//MARK: -
print(n)

for i in 1...n {
    sum += i
}

print("Sum of 1 to \(n) is \(sum).")
