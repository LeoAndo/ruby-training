# frozen_string_literal: true

$x = 0
x = 0

require './scope_sample2' # ここでGlobal 変数の更新が入る

p $x # 1
p x # 0