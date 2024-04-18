using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        // Define the pairs as a jagged array of strings
        string[][] pairs = new string[][]
        {
            new string[] { "Новосибирск", "Новосибирск" }
        };

        Console.WriteLine(findFinal(pairs));
    }

    public static string findFinal(string[][] pairs)
    {
        Dictionary<string, int> startCount = new Dictionary<string, int>();
        Dictionary<string, int> endCount = new Dictionary<string, int>();

        // Fill the dictionaries for starting and ending points
        foreach (string[] pair in pairs)
        {
            if (startCount.ContainsKey(pair[0]))
                startCount[pair[0]]++;
            else
                startCount[pair[0]] = 1;

            if (endCount.ContainsKey(pair[1]))
                endCount[pair[1]]++;
            else
                endCount[pair[1]] = 1;
        }

        // Find the point that is not a starting point for any pair
        foreach (string end in endCount.Keys)
        {
            if (!startCount.ContainsKey(end))
                return end;
        }

        // If all points are starting points for some pair, return a message to contact a specialist
        return "обратитесь к специалисту";
    }
}
