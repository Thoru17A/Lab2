package main

import (
    "fmt"
    "strconv"
)

func sumOfNumbers(numbers []int) int {
    sum := 0
    for _, number := range numbers {
        strNumber := strconv.Itoa(number)
        for i, _ := range strNumber {
            if i%2 != 0 && int(strNumber[len(strNumber)-i-1]-'0')%2 != 0 {
                sum += number
                break
            }
        }
    }
    return sum
}

func main() {
    numbers := []int{4, 101, 32, 21, 112, 332, 22, 67}
    fmt.Println(sumOfNumbers(numbers))
}
