# frozen_string_literal: true

name = ["leo", "leo2", "leo3"]
name.each do |n|
  p n
end

# リテラルを利用したパターン
name = %w[leo leo2 leo3]
name.each do |n|
  p n
end