def sum_of_numbers(numbers)
    sum = 0
    numbers.each do |number|
        str_number = number.to_s
        (0..str_number.length - 1).each do |i|
            if i.odd? && str_number[-i-1].to_i.odd?
                sum += number
                break
            end
        end
    end
    sum
end

numbers = [4, 101, 32, 21, 112, 332, 22, 67]
puts sum_of_numbers(numbers)
