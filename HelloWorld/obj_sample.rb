# frozen_string_literal: true

ary = ["leo", "leo2", "leo3"]
ary2 = ["leo", "leo2", "leo3"]

p ary.object_id # オブジェクトに割り当てられる一意なID
p ary2.object_id

# オブジェクトの同一性の比較
p ary.equal?(ary2) # false

# オブジェクトの同値性の比較
p ary.eql?(ary2) # true

# 型チェック
p ary.instance_of? String # false
p ary.instance_of? Array # true
