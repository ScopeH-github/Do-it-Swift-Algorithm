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
print("Sum of values is \(sumOf(array: height2)).")
print()

//MARK: - Q3
func aveOf(array: [Int]) -> Int {
    var ave = array[0]
    for i in 1..<array.count {
        ave += array[i]
    }
    ave /= array.count
    return ave
}

var height3 :  [Int] = []
var number3: Int

print("Number of people :", terminator: " ")
number3 = 5
print(number3)
print("Enter height of each \(number3) people.")
for i in 0..<number3 {
    print("height[\(i)] : ", terminator : "")
    height3.append(Int.random(in: 130...190))
    print(height3[i])
}
print("Average of values is \(aveOf(array: height3)).")
print()

//MARK: - Q4
func maxOf(array: [Int]) -> Int {
    var max = array[0]
    for i in 1..<array.count {
        array[i] > max ? max = array[i] : ()
    }
    return max
}

var height4 : [Int] = []
var number4: Int

print("Number of people :", terminator: " ")
number4 = Int.random(in: 5...20)
print(number4)
print("Enter height of each \(number4) people.")
for i in 0..<number4 {
    print("height[\(i)] : ", terminator : "")
    height4.append(Int.random(in: 130...190))
    print(height4[i])
}
print("Max of values is \(maxOf(array: height4)).")
print()


