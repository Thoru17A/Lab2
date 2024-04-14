function findFinal(pairs) {
    let startCount = {};
    let endCount = {};

    // Заполняем словари начальных и конечных пунктов
    for (let pair of pairs) {
        startCount[pair[0]] = (startCount[pair[0]] || 0) + 1;
        endCount[pair[1]] = (endCount[pair[1]] || 0) + 1;
    }

    // Ищем пункт, который не является начальным для какой-либо пары
    for (let end of Object.keys(endCount)) {
        if (!startCount.hasOwnProperty(end)) {
            return end;
        }
    }

    // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    return "обратитесь к специалисту";
}

let pairs = [
    ["Новосибирск", "Новосибирск"],
];

console.log(findFinal(pairs));
