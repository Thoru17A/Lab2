fun main(args: Array<String>) {
    // Define the number of towers, the range of towers that can be repaired, and the string of tower states
    val N = 10
    val X = 1
    val S = "1000100111"

    // Call the function and print the result
    println(AllCooperatives(N, X, S) ?: "No")
}

// Function to check if all towers can be repaired
fun AllCooperatives(N: Int, X: Int, S: String): Boolean? {
    // Convert string to char array
    val towerStates = S.toCharArray()

    // Iterate over all towers
    for (i in 0 until N) {
        // If the current tower is working, continue to the next tower
        if (towerStates[i] == '1') {
            continue
        }

        // Check if the left tower is working
        var leftTowerWorks = false
        for (j in i - X downTo 0) {
            if (towerStates[j] == '1') {
                leftTowerWorks = true
                break
            }
        }

        // Check if the right tower is working
        var rightTowerWorks = false
        for (j in i + 1 until N) {
            if (towerStates[j] == '1') {
                rightTowerWorks = true
                break
            }
        }

        // If neither the left nor the right tower is working, return false
        if (!leftTowerWorks && !rightTowerWorks) {
            return false
        }
    }

    // If all towers can be repaired, return true
    return true
}
