require 'ffi'

module LibMath
  extend FFI::Library
  ffi_lib '../builds/libmath.so'

  attach_function :add, [:int, :int], :int
  attach_function :sub, [:int, :int], :int
  attach_function :mul, [:int, :int], :int
  attach_function :div, [:double, :double], :double
end 

puts "add(2.5, 3.5) = #{LibMath.add(2.5, 3.5)}"
puts "sub(10.0, 4.0) = #{LibMath.sub(10.0, 4.0)}"
puts "mul(5.0, 5.0) = #{LibMath.mul(5.0, 5.0)}"
puts "div(10.0, 2.0) = #{LibMath.div(10.0, 2.0)}"
