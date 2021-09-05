func maxOf(array: [Int]) -> Int {
    var max = array[0]
    for i in 1..<array.count {
        array[i] > max ? max = array[i] : ()
    }
    return max
}
var height: [Int] = []
var number: Int

print("Number of people :", terminator: " ")
number = 5
print(number)
print("Enter height of each \(number) people.")
for i in 0..<number {
    height.append(Int.random(in: 100...189))
    print("height[\(i)] : \(height[i]) ")
}
print("Max value is \(maxOf(array: height)).")
