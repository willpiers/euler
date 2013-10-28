require_relative "../core_ext/integer"

puts (1..100).reduce(1, :*).digits.reduce(:+)
