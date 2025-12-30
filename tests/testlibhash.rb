require 'ffi'

module LibHash
  extend FFI::Library
  ffi_lib '../builds/libhash.so'

  attach_function :hash_fnv1a, [:pointer, :size_t], :uint64
  attach_function :hash_djb2, [:string], :uint32
end

input = "helloworld"
bytes = input.bytes

buffer = FFI::MemoryPointer.new(:uint8, bytes.length)
buffer.put_array_of_uint8(0, bytes)

hash = LibHash.hash_fnv1a(buffer, bytes.length)

puts "Input: #{input}"
puts "Hash: #{hash}"
