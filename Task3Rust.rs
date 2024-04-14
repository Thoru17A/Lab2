fn sum_of_numbers(numbers: &[i32]) -> i32 {
    let mut sum = 0;
    for &number in numbers {
        let str_number = number.to_string();
        for (i, c) in str_number.chars().enumerate() {
            if i % 2 != 0 && c.to_digit(10).unwrap() % 2 != 0 {
                sum += number;
                break;
            }
        }
    }
    sum
}

fn main() {
    let numbers = [4, 101, 32, 21, 112, 332, 22, 67];
    println!("{}", sum_of_numbers(&numbers));
}
