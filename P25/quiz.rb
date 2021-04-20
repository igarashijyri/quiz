# n = size 長さ/cm
# m = people 人数

def cutbar(people, size, rod_count)
  if rod_count >= size
    0
  elsif rod_count < people
    1 + cutbar(people, size, rod_count * 2) # 棒の数が切る人数より少ない時は、棒の数が2倍になる
  else
    1 + cutbar(people, size, rod_count + people) # 棒の数が切る人数より多い時は、人数分だけ棒が増える
  end
end

puts cutbar(3, 20, 1)
puts cutbar(5, 100, 1)