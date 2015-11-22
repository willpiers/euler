require_relative '../core_ext/integer'
require 'set'

abundant_nums = (1..28123).select do |i|
  i.divisors.reduce(:+) > i
end

sums = []
abundant_nums.each do |abundant_one|
  abundant_nums.each do |abundant_two|
    sum = abundant_one + abundant_two
    break if sum > 28123
    sums << sum
  end
end
sums.uniq!

puts (1..28123).reject { |i| sums.include? i }.reduce(:+)
