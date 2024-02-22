# frozen_string_literal: true

class HelloWorld
  Version = "1.0.0"
  attr_accessor :name # -> @nameのgetter / setterメソッドを自動的に作成
  # attr_writer :name -> @nameのsetterメソッドを自動的に作成
  # attr_reader :name -> @nameのgetterメソッドを自動的に作成
  def initialize(name = "Ruby")
    @name = name
  end

  def hello
    p "Hello, World, " + @name
  end

  # クラスメソッドの書き方３パターン
  def HelloWorld.hello1
    p "クラスメソッドの呼び出し１"
  end

  class << HelloWorld
    def hello2
      p "クラスメソッドの呼び出し2"
    end
  end

  def self.hello3
    p "クラスメソッドの呼び出し3"
  end

end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

[bob, alice, ruby].each do |i|
  i.hello
end

[bob, alice, ruby].each do |i|
  p i.name
end

# クラスメソッドの呼び出し
HelloWorld.hello1
HelloWorld.hello2
HelloWorld.hello3

# 定数の呼び出し
p HelloWorld::Version

