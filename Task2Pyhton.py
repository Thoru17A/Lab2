def main():
    # Определяем пары начальных и конечных пунктов
    pairs = [
        ["Новосибирск", "Новосибирск"],
    ]

    print(find_final(pairs))


def find_final(pairs):
    start_count = {}
    end_count = {}

    # Заполняем словари начальных и конечных пунктов
    for pair in pairs:
        start_count[pair[0]] = start_count.get(pair[0], 0) + 1
        end_count[pair[1]] = end_count.get(pair[1], 0) + 1

    # Ищем пункт, который не является начальным для какой-либо пары
    for end in end_count:
        if end not in start_count:
            return end

    # Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    return "обратитесь к специалисту"


if __name__ == "__main__":
    main()
