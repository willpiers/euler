require_relative '../core_ext/integer'

sum = (1..10000).select do |first_amicable|
  second_amicable = first_amicable.sum_of_divisors
  second_amicable.sum_of_divisors == first_amicable && second_amicable != first_amicable
end.reduce(:+)

puts sum
