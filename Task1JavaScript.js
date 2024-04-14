function main() {
    // Define the number of towers, the range of towers that can be repaired, and the string of tower states
    let N = 10;
    let X = 1;
    let S = "1000100111";

    // Call the function and print the result
    console.log(AllCooperatives(N, X, S) ? "Yes" : "No");
}

// Function to check if all towers can be repaired
function AllCooperatives(N, X, S) {
    // Convert string to char array
    let towerStates = S.split("");

    // Iterate over all towers
    for (let i = 0; i < N; i++) {
        // If the current tower is working, continue to the next tower
        if (towerStates[i] == '1') {
            continue;
        }

        // Check if the left tower is working
        let leftTowerWorks = false;
        for (let j = i - X; j < i; j++) {
            if (j >= 0 && towerStates[j] == '1') {
                leftTowerWorks = true;
                break;
            }
        }

        // Check if the right tower is working
        let rightTowerWorks = false;
        for (let j = i + 1; j <= i + X && j < N; j++) {
            if (towerStates[j] == '1') {
                rightTowerWorks = true;
                break;
            }
        }

        // If neither the left nor the right tower is working, return false
        if (!leftTowerWorks && !rightTowerWorks) {
            return false;
        }
    }

    // If all towers can be repaired, return true
    return true;
}

// Call the main function
main();
