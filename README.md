# Задание №1
## Вариант №7

В частном секторе расположены N подряд стоящих вышек, обеспечивающих сотовую связь. Вам дается строка S длины N, где S[i] = '1' означает, что вышка работает и обеспечивает кооператив связью, S[i] = '0' означает отсутствие связи. 
Вышка имеет показатель X, который означает, сколько кооперативов слева и справа от себя она может обеспечивать связью. Вам нужно
выяснить, могут ли все кооперативы пользоваться сотовой связью.

Пример: N = 4, X = 1, S = "1001"

Результат: Yes.

Пример: N = 4, X = 0, S = "1001"

Результат: No.

# Описания программы для проверки отремонтированности башен на языке C++

## Описание

Этот код написан на языке C++ и представляет собой программу, которая проверяет, могут ли все башни быть отремонтированы.

## Включаемые файлы

- `<iostream>`: этот файл содержит функции для ввода-вывода, такие как `std::cout` и `std::endl`.
- `<string>`: этот файл содержит функцию для работы со строками, такие как `std::string`.

## Функция `AllCooperatives`

- Эта функция принимает три аргумента: количество башен `N`, радиус ремонта башен `X` и строку состояний башен `S`.
- Она преобразует строку `S` в массив символов `towerStates` размером `N`.
- Затем она проверяет каждую башню в массиве `towerStates`.
- Если текущая башня работает (символ '1'), функция продолжает проверку следующей башни.
- Если текущая башня не работает (символ '0'), функция проверяет, работает ли левая башня (с индексом `i - X`) или правая башня (с индексом `i + 1` до `i + X`).
- Если ни левая, ни правая башни не работают, функция возвращает `false`, что означает, что не все башни могут быть отремонтированы.
- Если все башни могут быть отремонтированы, функция возвращает `true`.

## Функция `main`

- Это основная функция программы, которая вызывает функцию `AllCooperatives` с определенными значениями `N`, `X` и `S`.
- Затем она выводит результат проверки на экран: "Yes", если все башни могут быть отремонтированы, и "No", если нет.
- Функция `main` возвращает `0`, что означает, что программа успешно завершила свою работу.
