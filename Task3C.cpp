#include <iostream>
#include <string>
#include <vector>

int sumOfNumbers(std::vector<int> numbers) {
    int sum = 0;
    for (int number : numbers) {
        std::string strNumber = std::to_string(number);
        for (int i = 0; i < strNumber.length(); i++) {
            if (i % 2 != 0 && std::stoi(strNumber.substr(strNumber.length() - i - 1, 1)) % 2 != 0) {
                sum += number;
                break;
            }
        }
    }
    return sum;
}

int main() {
    std::vector<int> numbers = {4, 101, 32, 21, 112, 332, 22, 67};
    std::cout << sumOfNumbers(numbers) << std::endl;
    return 0;
}
