# frozen_string_literal: true

module M
  def hello
    puts "Hello, Mix-in"
  end
end

class C
  include M # モジュールをインクルードする
end

c = C.new
c.hello