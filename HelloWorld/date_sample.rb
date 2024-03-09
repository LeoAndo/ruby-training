# frozen_string_literal: true

require 'date'

p "日付の操作 基本"
dd = Date.today
puts dd
puts dd + 1
puts dd + 12
puts dd - 1
puts dd - 12

p ">>演算子を使うことであとの月の同日を表すDateオブジェクトを取得できる"
d = Date.today
puts d

puts d >> 1
puts d >> 12

puts d << 1
puts d << 12