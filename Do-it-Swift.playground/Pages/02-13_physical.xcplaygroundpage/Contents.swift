import Foundation

let VMAX = 21

struct PhysCheck {
    var name: String
    var height: Int
    var vision: Double
}

func aveHeight(dat: [PhysCheck]) -> Double {
    var sum = 0.0
    for i in dat {
        sum += Double(i.height)
    }
    return sum / Double(dat.count)
}

func distVision(dat: [PhysCheck], dist: inout [Int]) {
    for i in 0..<VMAX {
        dist[i] = 0
    }
    for i in 0..<dat.count {
        if dat[i].vision >= 0.0 && dat[i].vision <= Double(VMAX)/10.0 {
            dist[Int(dat[i].vision * 10)] += 1
        }
    }
}

let x: [PhysCheck] = [
    PhysCheck(name: "Sonic", height: 162, vision: 0.3),
    PhysCheck(name: "Tails", height: 173, vision: 0.7),
    PhysCheck(name: "Knux", height: 175, vision: 2.0),
    PhysCheck(name: "Shadow", height: 171, vision: 1.5),
    PhysCheck(name: "Rouge", height: 168, vision: 0.4),
    PhysCheck(name: "Blaze", height: 174, vision: 1.2),
    PhysCheck(name: "Silver", height: 169, vision: 0.8)
]
var vdist: [Int] = Array(repeating: 0, count: VMAX)
print("========== Physical Check Table ==========")
print("\("Name".padding(toLength: 10, withPad: " ", startingAt: 0))\t\("Height".padding(toLength: 10, withPad: " ", startingAt: 0))\t\("Vision".padding(toLength: 10, withPad: " ", startingAt: 0))")
for i in x {
    print("\("\(i.name)".padding(toLength: 10, withPad: " ", startingAt: 0))\t\(String(format: "%10d", i.height ))\t\(String(format: "%10.1f", i.vision))")
}
print("averageHeight: \(String(format: "%5.1f cm", aveHeight(dat: x)))")
distVision(dat: x, dist: &vdist)
print("Dist of Vision")
for i in 0..<VMAX {
    print("\(String(format:"%3.1f", Double(i)/10.0)) ~ : \(String(format: "%2d", vdist[i]))")
}
