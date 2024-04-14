import Foundation

func findFinal(pairs: [[String]]) -> String {
    var startCount: [String: Int] = [:]
    var endCount: [String: Int] = [:]

    // Заполняем словари начальных и конечных пунктов
    for pair in pairs {
        startCount[pair[0], default: 0] += 1
        endCount[pair[1], default: 0] += 1
    }

    // Ищем пункт, который не является начальным для какой-либо пары
    for end in endCount.keys {
        if !startCount.keys.contains(end) {
            return end
        }
    }

    // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    return "обратитесь к специалисту"
}

let pairs: [[String]] = [["Новосибирск", "Новосибирск"]]
print(findFinal(pairs: pairs))
