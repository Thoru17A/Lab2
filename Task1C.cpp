#include <iostream>
#include <string>

// Function to check if all towers can be repaired
bool AllCooperatives(int N, int X, std::string S) {
    // Convert string to char array
    char towerStates[N];
    for (int i = 0; i < N; i++) {
        towerStates[i] = S[i];
    }

    // Iterate over all towers
    for (int i = 0; i < N; i++) {
        // If the current tower is working, continue to the next tower
        if (towerStates[i] == '1') {
            continue;
        }

        // Check if the left tower is working
        bool leftTowerWorks = false;
        for (int j = i - X; j < i; j++) {
            if (j >= 0 && towerStates[j] == '1') {
                leftTowerWorks = true;
                break;
            }
        }

        // Check if the right tower is working
        bool rightTowerWorks = false;
        for (int j = i + 1; j <= i + X && j < N; j++) {
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

int main() {
    // Define the number of towers, the range of towers that can be repaired, and the string of tower states
    int N = 10;
    int X = 1;
    std::string S = "1000100111";

    // Call the function and print the result
    if (AllCooperatives(N, X, S)) {
        std::cout << "Yes" << std::endl;
    } else {
        std::cout << "No" << std::endl;
    }

    return 0;
}
