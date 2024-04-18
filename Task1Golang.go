package main

import (
	"fmt"
	"strings"
)

func main() {
	// Define the number of towers, the range of towers that can be repaired, and the string of tower states
	N := 10
	X := 1
	S := "1000100111"

	// Call the function and print the result
	if AllCooperatives(N, X, S) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

// Function to check if all towers can be repaired
func AllCooperatives(N int, X int, S string) bool {
	// Convert string to char array
	towerStates := strings.Split(S, "")

	// Iterate over all towers
	for i := 0; i < N; i++ {
		// If the current tower is working, continue to the next tower
		if towerStates[i] == "1" {
			continue
		}

		// Check if the left tower is working
		leftTowerWorks := false
		for j := i - X; j < i; j++ {
			if j >= 0 && towerStates[j] == "1" {
				leftTowerWorks = true
				break
			}
		}

		// Check if the right tower is working
		rightTowerWorks := false
		for j := i + 1; j <= i+X && j < N; j++ {
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
