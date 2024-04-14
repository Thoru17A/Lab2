def main
  # Define the number of towers, the range of towers that can be repaired, and the string of tower states
  N = 10
  X = 1
  S = "1000100111"

  # Call the function and print the result
  puts AllCooperatives(N, X, S) ? "Yes" : "No"
end

# Function to check if all towers can be repaired
def AllCooperatives(N, X, S)
  # Convert string to char array
  tower_states = S.chars

  # Iterate over all towers
  for i in 0...N
    # If the current tower is working, continue to the next tower
    if tower_states[i] == '1'
      next
    end

    # Check if the left tower is working
    left_tower_works = false
    for j in (i - X)...i
      if j >= 0 && tower_states[j] == '1'
        left_tower_works = true
        break
      end
    end

    # Check if the right tower is working
    right_tower_works = false
    for j in i + 1...(i + X + 1).min(N)
      if tower_states[j] == '1'
        right_tower_works = true
        break
      end
    end

    # If neither the left nor the right tower is working, return false
    if !left_tower_works && !right_tower_works
      return false
    end
  end

  # If all towers can be repaired, return true
  true
end

# Call the main function
main
