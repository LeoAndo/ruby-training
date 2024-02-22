# frozen_string_literal: true

class HelloWorld
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

