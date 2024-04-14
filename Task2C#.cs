using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        string[][] pairs = {
            {"Новосибирск", "Новосибирск"},
        };

        Console.WriteLine(findFinal(pairs));
    }

    public static string findFinal(string[][] pairs)
    {
        Dictionary<string, int> startCount = new Dictionary<string, int>();
        Dictionary<string, int> endCount = new Dictionary<string, int>();

        // Заполняем словари начальных и конечных пунктов
        foreach (string[] pair in pairs)
        {
            if (startCount.ContainsKey(pair[0]))
                startCount[pair[0]]++;
            else
                startCount.Add(pair[0], 1);

            if (endCount.ContainsKey(pair[1]))
                endCount[pair[1]]++;
            else
                endCount.Add(pair[1], 1);
        }

        // Ищем пункт, который не является начальным для какой-либо пары
        foreach (string end in endCount.Keys)
        {
            if (!startCount.ContainsKey(end))
                return end;
        }

        // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
        return "обратитесь к специалисту";
    }
}
