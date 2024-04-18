use std::collections::HashMap;

fn main() {
    let pairs = vec![vec!["Новосибирск", "Новосибирск"]];
    println!("{}", find_final(&pairs));
}

fn find_final(pairs: &Vec<Vec<&str>>) -> String {
    let mut start_count: HashMap<&str, i32> = HashMap::new();
    let mut end_count: HashMap<&str, i32> = HashMap::new();

    // Заполняем словари начальных и конечных пунктов
    for pair in pairs {
        let start = pair.get(0).unwrap_or(&"");
        let end = pair.get(1).unwrap_or(&"");
        *start_count.entry(start).or_insert(0) += 1;
        *end_count.entry(end).or_insert(0) += 1;
    }

    // Ищем пункт, который не является начальным для какой-либо пары
    for (end, _) in &end_count {
        if !start_count.contains_key(end) {
            return end.to_string();
        }
    }

    // Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
    "обратитесь к специалисту".to_string()
}
