# frozen_string_literal: true

# 西暦から平成に変換する
ad = ARGV[0].to_i

if ad <= 1988 then
  print("平成は1989年からになります\n1989以上を入力してください")
  return
end

heisei = ad  - 1988 # 1988年は昭和最後の年 (昭和63年)
p "平成" + heisei.to_s + "年"