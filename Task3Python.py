def sum_of_numbers(numbers):
    sum = 0
    for number in numbers:
        str_number = str(number)
        for i in range(len(str_number)):
            if i % 2 != 0 and int(str_number[len(str_number) - i - 1]) % 2 != 0:
                sum += number
                break
    return sum

numbers = [4, 101, 32, 21, 112, 332, 22, 67]
print(sum_of_numbers(numbers))
