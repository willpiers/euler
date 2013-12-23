require_relative '../core_ext/integer'

solutions = []
2.upto(1000000) do |number|
  digits = number.digits
  result = digits.inject(0) { |sum, num| sum += num**5 }

  solutions << number if result == number
end
puts solutions.reduce(:+)
