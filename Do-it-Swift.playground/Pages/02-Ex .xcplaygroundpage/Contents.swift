//MARK: - Q1
func maxOf(array: [Int]) -> Int {
    var min = array[0]
    for i in 1..<array.count {
        array[i] < min ? min = array[i] : ()
    }
    return min
}

var height1 :  [Int] = []
var number: Int

print("Number of people :", terminator: " ")
number = 5
print(number)
print("Enter height of each \(number) people.")
for i in 0..<number {
    print("height[\(i)] : ", terminator : "")
    height1.append(Int.random(in: 130...190))
    print(height1[i])
}
print("Minimum value is \(maxOf(array: height1)).")

