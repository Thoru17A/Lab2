import Foundation

func main() {
    // Define the number of towers, the range of towers that can be repaired, and the string of tower states
    let N = 10
    let X = 1
    let S = "1000100111"

    // Call the function and print the result
    let result = AllCooperatives(N: N, X: X, S: S)
    print(result ? "Yes" : "No")
}

// Function to check if all towers can be repaired
func AllCooperatives(N: Int, X: Int, S: String) -> Bool {
    // Convert string to char array
    let towerStates = Array(S)

    // Iterate over all towers
    for i in 0..<N {
        // If the current tower is working, continue to the next tower
        if towerStates[i] == "1" {
            continue
        }

        // Check if the left tower is working
        var leftTowerWorks = false
        for j in (i - X)...i {
            if j >= 0 && towerStates[j] == "1" {
                leftTowerWorks = true
                break
            }
        }

        // Check if the right tower is working
        var rightTowerWorks = false
        for j in i + 1...(i + X).min(N) {
            if towerStates[j] == "1" {
                rightTowerWorks = true
                break
            }
        }

        // If neither the left nor the right tower is working, return false
        if !leftTowerWorks && !rightTowerWorks {
            return false
        }
    }

    // If all towers can be repaired, return true
    return true
}
