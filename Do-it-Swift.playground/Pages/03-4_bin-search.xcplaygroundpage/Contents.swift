
import Foundation

var currentLine = 0
let input = ["8", "1", "4", "23", "21", "56", "67", "79", "96", "100", "100"]

func readLine() -> String? {
    if currentLine < input.endIndex {
        let line = input[currentLine]
        currentLine += 1
        return line
    } else {
        return nil
    }
}


func binSearch(a: [Int], key: Int) -> Int? {
    let n = a.count
    var pleft = 0
    var pright = n - 1
    var pcenter : Int
    
    repeat {
        pcenter = (pleft + pright) / 2
        if a[pcenter] == key {
            return pcenter
        } else if a[pcenter] < key {
            pleft = pcenter + 1
        } else {
            pright = pcenter - 1
        }
    } while pleft <= pright
    return nil
}

let numberofX, key : Int
let index : Int?
var x : [Int] = []
print("Binary Search")
print("number of Elements?", terminator: " $ ")
//  Input
numberofX = Int(readLine()!)!
print(numberofX)
//  ======
print("Type in ascending order: ")
print("x[0] : ", terminator: "")
x.append(Int(readLine()!)!)
print(x[0])
for i in 1..<numberofX {
    var inputX : Int   // Input
    repeat {
        print("x[\(i)] : ", terminator: "")
        inputX = Int(readLine()!)! // Input
        print(inputX)              // Input
    } while inputX < x[i-1]
    x.append(inputX)
}
print("\n array x is: \(x)\n")

print("Search Key: ", terminator: "")
//  Input
key = Int(readLine()!)!
print(key)
//  =====
index = binSearch(a: x, key: key)
if index == nil {
    print("Search Failed.")
} else {
    print("\(key) is at x[\(index!)].")
}

