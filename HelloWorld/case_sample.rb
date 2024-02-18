# frozen_string_literal: true

array = ["a", 1, nil]
array.each do |item|
  case item
  when String
    p "item is String"
  when Numeric
    p "item is Numeric"
  when nil
    p "item is nil"
  else
    p "item is something."
  end
end