use std::collections::HashMap;

fn find_final(pairs: &[(&str, &str)]) -> &'static str {
    let mut start_count = HashMap::new();
    let mut end_count = HashMap::new();

    // Заполняем словари начальных и конечных пунктов
    for pair in pairs {
        *start_count.entry(pair.0).or_insert(0) += 1;
        *end_count.entry(pair.1).or_insert(0) += 1;
    }

    // Ищем пункт, который не является начальным для какой-либо пары
    for end in end_count.keys() {
        if !start_count.contains_key(end) {
            return end;
        }
    }

    // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    return "обратитесь к специалисту";
}

fn main() {
    let pairs: [&str; 2] = ["Новосибирск", "Новосибирск"];
    println!("{}", find_final(&pairs.into_iter().map(|s| (&s, &s)).collect::<Vec<_>>()));
}
