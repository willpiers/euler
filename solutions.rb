require 'set'
require_relative './euler_methods'
timer_start = Time.now

# ########################## Problem Thirty-Four
class Integer
  def fact
    (1..self).inject(1) { |f,n| f*n }
  end
  def is_prime?
    return true if self.least_factor == self
    false
  end
  # this next method is for problem 46
  def primes
    return [] if self == 0
    return "don't do that" if self < 0
    list = [2]
    test = 3
    until list.length == self
      list << test if test.is_prime?
      test += 2
    end
    list
  end
  def to_binary
    number = self
    return 1 if number == 1
    return 10 if number == 2
    power = 0
    until 2**power >= number
      power += 1
      if 2**power == number
        binary_digits = [1] + [0]*(power-1)
        return binary_digits.map { |dig| dig.to_s }.join
      end
    end

    power -= 1
    binary_digits = [0]*power

    (0..binary_digits.length).each do |digit_number|
      if 2**power <= number
        binary_digits[digit_number] = 1
        number = number - 2**power
      else
        binary_digits[digit_number] = 0
      end
      power -= 1
    end
    binary_digits.map { |dig| dig.to_s }.join.to_i
  end
end

# drought = 0; nums = []; test = 3;
# while drought < 50000
#   if test.to_s.split('').inject(0) { |sum, e| sum += e.to_i.fact } == test
#     nums << test
#   else
#     drought += 1
#   end
#   test += 1
# end
# puts nums.inject(0) { |sum, e| sum += e }

# ########################## Problem Thirty-Five
# primes_below_one_million = 78500.primes
# circular_prime_count = 0

# primes_below_one_million.each do |prime|
#   break if prime >= 1000000
#   digits = prime.to_s.split('')

#   digits.length.times do |times|
#     new_number = digits.rotate.join.to_i
#     break unless new_number.is_prime?
#     if times == (digits.length - 1)
#       circular_prime_count += 1
#     end
#     digits = digits.rotate
#   end
# end
# puts circular_prime_count

# ########################## Problem Thirty-Six
# palindromes_in_both_bases = []

# 1.upto 1000000 do |num|
#   if num.to_s == num.to_s.reverse && num.to_binary.to_s == num.to_binary.to_s.reverse
#     palindromes_in_both_bases << num
#   end
# end

# puts palindromes_in_both_bases.reduce(:+)

# ########################## Problem Forty-Six
#   for the first 500 numbers
#   take the number's square and double it.
#   add each prime to it and call that number x
#   increase the entry in the numbers array corresponding to x by 1
#   at the end, any number in the numbers array that still has a zero entry is a counter
#   example to goldbach's other theorem (conjecture).

# bound = 10000; primes = 1000.primes; numbers = [0] * (bound)
# (1..bound).each do |n|
#   x = 2*(n**2)
#   primes.each { |p| numbers[(p + x)] += 1 unless p+x > bound-1 }
# end

# numbers.each_with_index do |num, index|
#   if index.odd? && num == 0 && index.least_factor != index
#     puts "#{index}"
#     break
#   end
# end

# ########################## Problem Forty-Seven
# test = 1
# in_a_row = 0
# while true
#   if prime_divisors(test) == 4
#     in_a_row += 1
#     if in_a_row == 4
#       break
#     end
#   else
#     in_a_row = 0
#   end
#   test += 1
# end
# puts test

# ########################## Problem Forty-Eight
# sum_mod = 0
# 1.upto 1000 do |num|
#   sum_mod += num**num % 10**11
# end
# puts sum_mod % 10**10

# ########################## Problem Sixty-Three
# start = Time.now
# count = 0
# 1.upto(9) do |num|
#   1.upto(22) do |exp|
#     if (num**exp).to_s.size == exp
#       count += 1
#     end
#   end
# end
# puts count
# puts Time.now - start

# ########################## Problem Ninety-Two  -- this takes about 25 minutes
# there is a method, Array#permutations, that could greatly reduce the time on this problem. for any number that arrives at 89, all permutations will also arrive at 89

# nums_arriving_at_89 = [89]
# (2..10000000).each do |number|
#   n = number
#   until n == 1
#     if n == 89
#       nums_arriving_at_89 << number
#       break
#     else
#       n = n.to_s.split('').inject(0) { |sum,digit| sum += (digit.to_i)**2 }
#     end
#   end
# end
# puts nums_arriving_at_89.length

# ########################## Problem Ninety-Seven
# result = 28433
# 7830457.times do |i|
#   result = result*2 % 10000000000
# end
# puts result + 1

# ########################## Problem One-Hundred-Twenty-Five
# max = 10**7
# nums = Set.new
# 1.upto(max) do |start|
#   sum = start**2
#   counter = start + 1
#   until sum > max
#     sum += counter**2
#     counter += 1
#     if sum.to_s.reverse == sum.to_s && sum < max
#       nums << sum
#     end
#   end
# end
# s = nums.inject(0) { |sum, entry| sum += entry }
# puts "There are #{nums.size} such numbers below #{max} and their sum is #{s}"

# ########################## Problem One-Hundred-Seventy-Nine (Terrible) runtime: ~4 hours
# count = 0
# prev_count = 1
# 1.upto(10**5 - 1) do |test|
#   next_count = distinct_divisors(test + 1)
#   if prev_count == next_count
#     count += 1
#   end
#   prev_count = next_count
# end
# puts ''
# puts count

# ########################## Problem One-Hundred-Seventy-Nine (Revised) runtime: ~90 seconds
# max = 10**5
# divs = [0] * max
# 1.upto(max) do |num|
#   i = 1
#   index = num
#   while index < max
#     divs[index] += 1
#     i += 1
#     index = i*num
#   end
# end
# count = 0
# divs.each_with_index do |divisors, index|
#   if divisors == divs[index+1]
#     count += 1
#   end
# end
# puts count














puts Time.now - timer_start
