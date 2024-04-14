public class Main {
    public static void main(String[] args) {
        int[] numbers = {4, 101, 32, 21, 112, 332, 22, 67};
        System.out.println(sumOfNumbers(numbers));
    }

    public static int sumOfNumbers(int[] numbers) {
        int sum = 0;
        for (int number : numbers) {
            String strNumber = Integer.toString(number);
            for (int i = 0; i < strNumber.length(); i++) {
                // Проверяем, что позиция нечетная и цифра на этой позиции нечетная
                if (i % 2 != 0 && Character.getNumericValue(strNumber.charAt(strNumber.length() - i - 1)) % 2 != 0) {
                    sum += number;
                    break; // Переходим к следующему числу, так как число уже подходит
                }
            }
        }
        return sum;
    }
}
