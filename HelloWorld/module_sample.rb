# frozen_string_literal: true

module HelloModule
  Version = "1.0.0" # 定数定義

  def hello(name)
    p "Hello, ", name, ".\n"
  end

  module_function :hello # helloをmodule関数として公開する
end

p HelloModule::Version
p HelloModule.hello("Ruby")

# includeしたパターン
include HelloModule

p Version
p hello("iOS")