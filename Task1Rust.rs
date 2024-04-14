use std::io;

fn main() {
    // Define the number of towers, the range of towers that can be repaired, and the string of tower states
    let N = 10;
    let X = 1;
    let S = "1000100111";

    // Call the function and print the result
    let result = AllCooperatives(N, X, S);
    match result {
        true => println!("Yes"),
        false => println!("No"),
    }
}

// Function to check if all towers can be repaired
fn AllCooperatives(N: usize, X: usize, S: &str) -> bool {
    // Convert string to char array
    let tower_states: Vec<char> = S.chars().collect();

    // Iterate over all towers
    for i in 0..N {
        // If the current tower is working, continue to the next tower
        if tower_states[i] == '1' {
            continue;
        }

        // Check if the left tower is working
        let mut left_tower_works = false;
        for j in (i - X).max(0)..i {
            if tower_states[j] == '1' {
                left_tower_works = true;
                break;
            }
        }

        // Check if the right tower is working
        let mut right_tower_works = false;
        for j in i + 1..(i + X + 1).min(N) {
            if tower_states[j] == '1' {
                right_tower_works = true;
                break;
            }
        }

        // If neither the left nor the right tower is working, return false
        if !left_tower_works && !right_tower_works {
            return false;
        }
    }

    // If all towers can be repaired, return true
    true
}
