using System;
using System.Linq;

class Program
{
    static void Main()
    {
        int[] numbers = {4, 101, 32, 21, 112, 332, 22, 67};
        Console.WriteLine(SumOfNumbers(numbers));
    }

    public static int SumOfNumbers(int[] numbers)
    {
        int sum = 0;
        foreach (int number in numbers)
        {
            string strNumber = number.ToString();
            for (int i = 0; i < strNumber.Length; i++)
            {
                if (i % 2 != 0 && int.Parse(strNumber[strNumber.Length - i - 1].ToString()) % 2 != 0)
                {
                    sum += number;
                    break;
                }
            }
        }
        return sum;
    }
}
