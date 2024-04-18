fn main() {
    let numbers = [4, 101, 32, 21, 112, 332, 22, 67];
    println!("{}", sum_of_numbers(&numbers));
}

fn sum_of_numbers(numbers: &[i32]) -> i32 {
    let mut sum = 0;
    for &number in numbers {
        let str_number = number.to_string();
        let len = str_number.len();
        for i in 0..len {
            // Проверяем, что позиция нечетная и цифра на этой позиции нечетная
            if i % 2 != 0 && str_number.chars().nth(len - i - 1).unwrap().to_digit(10).unwrap() % 2 != 0 {
                sum += number;
                break; // Переходим к следующему числу, так как число уже подходит
            }
        }
    }
    sum
}
