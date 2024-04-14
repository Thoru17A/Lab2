package main

import (
    "fmt"
)

func findFinal(pairs [][2]string) string {
    startCount := make(map[string]int)
    endCount := make(map[string]int)

    // Заполняем словари начальных и конечных пунктов
    for _, pair := range pairs {
        startCount[pair[0]]++
        endCount[pair[1]]++
    }

    // Ищем пункт, который не является начальным для какой-либо пары
    for end := range endCount {
        if _, ok := startCount[end]; !ok {
            return end
        }
    }

    // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    return "обратитесь к специалисту"
}

func main() {
    pairs := [][2]string{{"Новосибирск", "Новосибирск"}}
    fmt.Println(findFinal(pairs))
}
