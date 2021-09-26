let mdays = [
    [31,28,31,30,31,30,31,31,30,31,30,31],
    [31,29,31,30,31,30,31,31,30,31,30,31]
]

var year, month, day: Int
var retry = false
repeat {
    year = Int.random(in: 1900...2099)
    month = Int.random(in: 1...12)
    day = Int.random(in: 1...31)
    if month == 2 {
        if (day > 28 && isLeap(year: year) == 0) {
            day = 28
        } else if (day > 29 && isLeap(year: year) == 1) {
            day = 29
        } 
    } else if month == 4 || month == 6 || month == 9 || month == 11 {
        if day > 30 {
            day = 30
        }
    }
    print("year: \(year)")
    print("month: \(month)")
    print("day: \(day)")
    
    print("=> \(dayOfYear(y: year, m: month, d: day)) day of \(year)")
    
    let input = Int.random(in: 0...1)
    retry = input == 1
    print("Retry? (1 - Yes / 0 - No) : \(input)")
} while retry


func isLeap(year: Int) -> Int {
    year % 4 == 0 && year % 100 != 0 || year % 400 == 0 ? 1 : 0
}

func dayOfYear(y: Int, m: Int, d: Int) -> Int {
    var days = d
    for i in 1..<m {
        days += mdays[isLeap(year: y)][i-1]
    }
    return days
}
