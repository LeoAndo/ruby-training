# frozen_string_literal: true
require 'fileutils'

begin
  FileUtils.cp("data.txt", "data_copy.txt")
  FileUtils.move("data_copy.txt", "tmp/data_copy.txt")
rescue Errno::ENOENT
  p "error: " + $!.message
end

# ディレクトリ操作
# /usr/binは以下のファイルを表示する.
begin
  dir = Dir.open("/usr/bin")
  dir.each do |name|
    p name
  end

rescue Errno::ENOENT
  p "error: " + $!.message

ensure
  dir.close
end
