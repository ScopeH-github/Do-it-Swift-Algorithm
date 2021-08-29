import Foundation
print("===== 곱 셈 표 =====")
for i in 1...9 {
    for j in 1...9 {
        print(String(format: "% 3d", i*j), terminator: "")
    }
    print()
}
