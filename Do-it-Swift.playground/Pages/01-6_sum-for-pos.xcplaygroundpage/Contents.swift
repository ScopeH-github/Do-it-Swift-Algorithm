var n : Int
var sum : Int
var index = 0 // 입력을 위한 처리
print("Get Sum of 1 to n.")
repeat {
    print("n : ", terminator: "")
    let data = [-4, 6, 7] // 입력을 위한 처리
    n = data[index] // 입력을 위한 처리
    print(n) // 입력을 위한 처리
    index += 1
} while n <= 0
sum = 0
for i in 1...n {
    sum += i
}
print("Sum of 1 to \(n) = \(sum)")

