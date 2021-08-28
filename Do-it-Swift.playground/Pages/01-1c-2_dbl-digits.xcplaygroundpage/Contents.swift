var no : Int
let sample = [123, 3, 1923, 12]
var i = 0

print("Input double digits number")
repeat {
    print("number: ", terminator: "")
    no = sample[i]
    i += 1
    print(no)
} while no < 10 || no > 99
print("no : \(no)")
