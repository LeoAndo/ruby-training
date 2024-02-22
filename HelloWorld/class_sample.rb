# frozen_string_literal: true

class HelloWorld
  attr_accessor :name # -> @nameのgetter / setterメソッドを自動的に作成
  # attr_writer :name -> @nameのsetterメソッドを自動的に作成
  # attr_reader :name -> @nameのgetterメソッドを自動的に作成
  def initialize(name = "Ruby")
    @name = name
  end

  def hello
    p "Hello, World, " + @name
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

