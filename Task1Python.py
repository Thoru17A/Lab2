def main():
    # Define the number of towers, the range of towers that can be repaired, and the string of tower states
    N = 10
    X = 1
    S = "1000100111"

    # Call the function and print the result
    print("Yes" if AllCooperatives(N, X, S) else "No")

# Function to check if all towers can be repaired
def AllCooperatives(N, X, S):
    # Convert string to char array
    tower_states = list(S)

    # Iterate over all towers
    for i in range(N):
        # If the current tower is working, continue to the next tower
        if tower_states[i] == '1':
            continue

        # Check if the left tower is working
        left_tower_works = False
        for j in range(i - X, i):
            if j >= 0 and tower_states[j] == '1':
                left_tower_works = True
                break

        # Check if the right tower is working
        right_tower_works = False
        for j in range(i + 1, i + X + 1):
            if j < N and tower_states[j] == '1':
                right_tower_works = True
                break

        # If neither the left nor the right tower is working, return false
        if not left_tower_works and not right_tower_works:
            return False

    # If all towers can be repaired, return true
    return True

# Call the main function
main()
