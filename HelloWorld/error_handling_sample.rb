# frozen_string_literal: true

begin
  # 例外を発生させる可能性のある処理
  open "存在しないファイルパス"
rescue => ex
  # 例外が起こった場合の処理
  p ex
ensure
  # 後処理
  p "例外の有無に関わらず、必ず呼ばれる処理"
end

begin
  open "例外を指定した捕捉"
rescue Errno::ENOENT
  p "aaaa"
rescue Errno::ECONNRESET, Errno::ConversionError
  p "bbbb"
ensure
  p "例外の有無に関わらず、必ず呼ばれる処理"
end