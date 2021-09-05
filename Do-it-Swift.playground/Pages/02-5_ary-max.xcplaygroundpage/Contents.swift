func maxOf(array: [Int]) -> Int {
    var max = array[0]
    for i in 1..<array.count {
        array[i] > max ? max = array[i] : ()
    }
    return max
}

let sampledata = [172, 153, 192, 140, 165]
var height: [Int] = []
var number: Int

print("Number of people :", terminator: " ")
number = 5
print(number)
print("Enter height of each \(number) people.")
for i in 0..<number {
    print("height[\(i)] : ", terminator : "")
    height.append(sampledata[i])
    print(sampledata[i])
}
print("Max value is \(maxOf(array: height)).")

