import Foundation

func sumOfNumbers(numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        let strNumber = String(number)
        for i in 0..<strNumber.count {
            if i % 2 != 0 && Int(String(strNumber[strNumber.index(strNumber.startIndex, offsetBy: strNumber.count - i - 1)]))! % 2 != 0 {
                sum += number
                break
            }
        }
    }
    return sum
}

let numbers = [4, 101, 32, 21, 112, 332, 22, 67]
print(sumOfNumbers(numbers: numbers))
