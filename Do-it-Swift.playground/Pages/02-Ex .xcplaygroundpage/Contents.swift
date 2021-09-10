//MARK: - Q1
func minOf(array: [Int]) -> Int {
    var min = array[0]
    for i in 1..<array.count {
        array[i] < min ? min = array[i] : ()
    }
    return min
}

var height1 :  [Int] = []
var number1: Int

print("Number of people :", terminator: " ")
number1 = 5
print(number1)
print("Enter height of each \(number1) people.")
for i in 0..<number1 {
    print("height[\(i)] : ", terminator : "")
    height1.append(Int.random(in: 130...190))
    print(height1[i])
}
print("Minimum value is \(minOf(array: height1)).")
print()

//MARK: - Q2
func sumOf(array: [Int]) -> Int {
    var sum = array[0]
    for i in 1..<array.count {
        sum += array[i]
    }
    return sum
}

var height2 :  [Int] = []
var number2: Int

print("Number of people :", terminator: " ")
number2 = 5
print(number2)
print("Enter height of each \(number2) people.")
for i in 0..<number2 {
    print("height[\(i)] : ", terminator : "")
    height2.append(Int.random(in: 130...190))
    print(height2[i])
}
print("Minimum value is \(sumOf(array: height2)).")

//MARK: - Q3
