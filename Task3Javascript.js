function sumOfNumbers(numbers) {
    let sum = 0;
    for (let number of numbers) {
        let strNumber = number.toString();
        for (let i = 0; i < strNumber.length; i++) {
            if (i % 2 != 0 && parseInt(strNumber.charAt(strNumber.length - i - 1)) % 2 != 0) {
                sum += number;
                break;
            }
        }
    }
    return sum;
}

let numbers = [4, 101, 32, 21, 112, 332, 22, 67];
console.log(sumOfNumbers(numbers));
