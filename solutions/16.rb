require_relative '../core_ext/integer'

puts (2**1000).digits.reduce(:+)
