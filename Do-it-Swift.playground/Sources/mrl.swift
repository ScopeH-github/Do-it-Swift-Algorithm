import Foundation

public func readLine(_ input: [String], _ currentLine: inout Int) -> String? {
    if currentLine < input.endIndex {
        let line = input[currentLine]
        currentLine += 1
        return line
    } else {
        return nil
    }
}

public func runEx(Q: Int, _ code: () -> ()) {
    print("====== Q\(String(format: "%2d", Q)) ======")
    code()
    print()
}
