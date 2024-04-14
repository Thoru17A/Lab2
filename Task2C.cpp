//
//  main.cpp
//  lr2
//
//  Created by Дмитрий Лазарев on 05.04.2024.
//

#include <iostream>
#include <map>
#include <vector>

std::string findFinal(std::vector<std::vector<std::string>>& pairs) {
    std::map<std::string, int> startCount;
    std::map<std::string, int> endCount;

    // Заполняем словари начальных и конечных пунктов
    for (auto& pair : pairs) {
        startCount[pair[0]]++;
        endCount[pair[1]]++;
    }

    // Ищем пункт, который не является начальным для какой-либо пары
    for (auto& end : endCount) {
        if (startCount.find(end.first) == startCount.end()) {
            return end.first;
        }
    }

    // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    return "обратитесь к специалисту";
}

int main() {
    std::vector<std::vector<std::string>> pairs = {
        {"Новосибирск", "Дубай"},
    };

    std::cout << findFinal(pairs) << std::endl;

    return 0;
}
