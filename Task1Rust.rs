fn main() {
    // Define the number of towers, the range of towers that can be repaired, and the string of tower states
    let n = 10;
    let x = 1;
    let s = String::from("1000100111");

    // Call the function and print the result
    println!("{}", if AllCooperatives(n, x, &s) { "Yes" } else { "No" });
}

// Function to check if all towers can be repaired
fn AllCooperatives(n: usize, x: usize, s: &str) -> bool {
    // Convert string to char array
    let tower_states: Vec<char> = s.chars().collect();

    // Iterate over all towers
    for i in 0..n {
        // If the current tower is working, continue to the next tower
        if tower_states[i] == '1' {
            continue;
        }

        // Check if the left tower is working
        let mut left_tower_works = false;
        for j in (i.saturating_sub(x)..i).rev() {
            if tower_states[j] == '1' {
                left_tower_works = true;
                break;
            }
        }

        // Check if the right tower is working
        let mut right_tower_works = false;
        for j in i+1..std::cmp::min(n, i + x + 1) {
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
