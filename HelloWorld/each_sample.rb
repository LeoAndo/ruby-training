# frozen_string_literal: true

# 配列を使った処理
name = %w[leo leo2 leo3]
name.each do |n|
  p n
end

# 範囲オブジェクトを使った処理
sum = 0
(1..3).each do |i|
  sum = sum + i
end
p sum