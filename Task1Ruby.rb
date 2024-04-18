def main
  n = 10
  x = 1
  s = "1000100111"

  puts all_cooperatives(n, x, s) ? "Yes" : "No"
end

def all_cooperatives(n, x, s)
  tower_states = s.chars

  n.times do |i|
    next if tower_states[i] == '1'

    left_tower_works = false
    (i - x...i).each do |j|
      if j >= 0 && tower_states[j] == '1'
        left_tower_works = true
        break
      end
    end

    right_tower_works = false
    ((i + 1)..[i + x, n - 1].min).each do |j|
      if tower_states[j] == '1'
        right_tower_works = true
        break
      end
    end

    return false unless left_tower_works || right_tower_works
  end

  true
end

main
