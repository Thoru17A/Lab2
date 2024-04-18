def find_final(pairs)
  start_count = {}
  end_count = {}

  # Заполняем словари начальных и конечных пунктов
  pairs.each do |pair|
    start_count[pair[0]] = (start_count[pair[0]] || 0) + 1
    end_count[pair[1]] = (end_count[pair[1]] || 0) + 1
  end

  # Ищем пункт, который не является начальным для какой-либо пары
  end_count.keys.each do |k|
    return k unless start_count.key?(k)
  end

  # Если все пункты являются начальными для какой-либо пары, возвращаем сообщение о необходимости обращения к специалисту
  "обратитесь к специалисту"
end

puts find_final([["Новосибирск", "Новосибирск"]])
