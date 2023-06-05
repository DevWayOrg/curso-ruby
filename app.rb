# String
phrase = "Hello World"
puts phrase.class
p phrase

puts "=" * 80

# Integer

num = 1_000
puts num.class
p num

puts "=" * 80

# Float

num2 = -210.20
puts num2.class
p num2

puts "=" * 80
# Booleans
# TrueClass

is_raining = true
puts is_raining.class
p is_raining

puts "=" * 80

# FalseClass
is_sunny = false
puts is_sunny.class
p is_sunny

puts "=" * 80
# Null
# NilClass

user = nil
puts user.class
p user

puts "=" * 80
# Array

arr = [1,2,3] # Array.new
puts arr.class
p arr

puts "=" * 80

# Hash

hash = {hello: "world"} # Hash.new
puts hash.class
p hash

hash = {"hello" => "world"}
p hash

puts "=" * 80

# Symbol

my_symbol = :ok
puts my_symbol.class
p my_symbol
