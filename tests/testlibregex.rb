require 'ffi'

module LibRegex
  extend FFI::Library
  ffi_lib '../builds/libregex.so'

  attach_function :regex_match, [:string, :string], :int
end

tests = [
  ["^[a-z]+$", "hello"],
  ["^[a-z]+S", "Hello143"],
  ["[0-9]", "abc123"],
]

tests.each do |pattern, text|
  result = LibRegex.regex_match(pattern, text)
  puts "Pattern: #{pattern}, Text: #{text}, Result: #{result}"
end
