# frozen_string_literal: true
require 'fileutils'

begin
  FileUtils.cp("data.txt", "data_copy.txt")
  FileUtils.move("data_copy.txt", "tmp/data_copy.txt")
rescue Errno::ENOENT
  p "error: " + $!.message
end