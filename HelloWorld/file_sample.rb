# frozen_string_literal: true
require 'fileutils'

p "ファイル操作 - START"
begin
  FileUtils.cp("data.txt", "data_copy.txt")
  FileUtils.move("data_copy.txt", "tmp/data_copy.txt")
rescue Errno::ENOENT
  p "error: " + $!.message
end

p "ディレクトリ操作 - START"
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

p "カレントディレクトリ以下の全てのファイル名を取得する(再起検索) - START"
Dir.glob("**/**").each { |name|
  p name
}
