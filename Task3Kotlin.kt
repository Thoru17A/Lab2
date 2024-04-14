fun sumOfNumbers(numbers: Array<Int>): Int {
    var sum = 0
    for (number in numbers) {
        val strNumber = number.toString()
        for (i in 0 until strNumber.length) {
            if (i % 2 != 0 && strNumber[strNumber.length - i - 1].toString().toInt() % 2 != 0) {
                sum += number
                break
            }
        }
    }
    return sum
}

fun main() {
    val numbers = arrayOf(4, 101, 32, 21, 112, 332, 22, 67)
    println(sumOfNumbers(numbers))
}
