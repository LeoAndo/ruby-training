# frozen_string_literal: true

p "破壊的なメソッドのサンプル(参照するインスタンスへの変更)"
name = ["b", "c", "a"]
name2 = name

name.sort!
p name
p name2

p "新しくインスタンスを作成する"
name3 = ["b", "c", "a"]
name4 = name3

name3.sort
p name3
p name4
