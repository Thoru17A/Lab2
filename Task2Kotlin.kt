fun findFinal(pairs: Array<Array<String>>): String {
    val startCount = HashMap<String, Int>()
    val endCount = HashMap<String, Int>()

    // Заполняем словари начальных и конечных пунктов
    pairs.forEach { pair ->
        startCount[pair[0]] = (startCount[pair[0]] ?: 0) + 1
        endCount[pair[1]] = (endCount[pair[1]] ?: 0) + 1
    }

    // Ищем пункт, который не является начальным для какой-либо пары
    endCount.keys.forEach { end ->
        if (!startCount.containsKey(end)) {
            return end
        }
    }

    // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    return "обратитесь к специалисту"
}

fun main() {
    val pairs: Array<Array<String>> = arrayOf(arrayOf("Новосибирск", "Новосибирск"))
    println(findFinal(pairs))
}
