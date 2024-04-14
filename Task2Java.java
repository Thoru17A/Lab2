import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        String[][] pairs = {
                {"Новосибирск", "Новосибирск"},
        };

        System.out.println(findFinal(pairs));
    }

    public static String findFinal(String[][] pairs) {
        Map<String, Integer> startCount = new HashMap<>();
        Map<String, Integer> endCount = new HashMap<>();

        // Заполняем словари начальных и конечных пунктов
        for (String[] pair : pairs) {
            startCount.put(pair[0], startCount.getOrDefault(pair[0], 0) + 1);
            endCount.put(pair[1], endCount.getOrDefault(pair[1], 0) + 1);
        }

        // Ищем пункт, который не является начальным для какой-либо пары
        for (String end : endCount.keySet()) {
            if (!startCount.containsKey(end)) {
                return end;
            }
        }

        // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
        return "обратитесь к специалисту";
    }
}
