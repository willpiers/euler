require 'set'
timer_start = Time.now
# ########################### Problem One
# sum = 0
# 1000.times do |number|
# 	if number % 3 == 0 || number % 5 == 0
# 		sum += number
# 	end
# end
# puts sum

# ############################ Problem Two
# fib = [1,2]
# n = 1
# while fib[n] + fib[n-1] <= 4000000
# 	fib.push(fib[n] + fib[n-1])
# 	n += 1
# end
# sum = 0
# fib.each do |test|
# 	if test % 2 == 0
# 		sum += test
# 	end
# end
# puts sum

# ########################## Problem Three
# test = 600851475143
def smallest_factor(number)
	sqrt = Math.sqrt(number).ceil
	2.upto(sqrt) do |factor|
		if number % factor == 0
			return factor
		end
	end
	return number
end
# puts smallest_factor(test)
# puts test/smallest_factor(test)
# test = test/smallest_factor(test)
# puts smallest_factor(test)
# puts test/smallest_factor(test)
# test = test/smallest_factor(test)
# puts smallest_factor(test)
# puts test/smallest_factor(test)
# test = test/smallest_factor(test)
# puts smallest_factor(test)
# puts test/smallest_factor(test)

# ########################## Problem Four
# array = []
# 100.times do |num1|
# 	x = 1000 - num1
# 	100.times do |num2|
# 		y = 1000 - num2
# 		test = (x*y).to_s
# 		if test == test.reverse
# 		array.push test
# 		end
# 	end
# end
# puts array.sort.last
# answer = 906609

# ########################## Problem Five
# answer = 1
# 1.upto(20) do |num|
# 	answer = num.lcm(answer)
# end
# puts answer
# better solution ==> num = (1..20).inject(1) { |result,n| result.lcm n }

# ########################## Problem Six
# sum_of_squares = (1..100).inject(0) { |sum, term| sum + term**2 }
# square_of_sum = 0
# (1..100).each do |a|
# 	square_of_sum += a
# end
# square_of_sum = square_of_sum**2
# puts square_of_sum - sum_of_squares

# ########################## Problem Seven
# prime_count = 0
# candidate = 2
# while prime_count < 10001
# 	if smallest_factor(candidate) == candidate
# 		prime_count += 1
# 	end
# 	candidate += 1
# end
# puts (candidate - 1)

# ########################## Problem Nine
# triplets = []
# 500.times do |a|
# 	(a+1).upto(500) do |b|
# 		(b+1).upto(500) do |c|
# 			if ( a**2 + b**2 == c**2 ) && a + b + c == 1000
# 				puts "#{a} + #{b} + #{c} = 1000 and is a pythagorean triple"
# 				puts "#{a} * #{b} * #{c} = #{a*b*c}"
# 				break
# 			end
# 		end
# 	end
# end

# ########################## Problem Ten
# primes = [2]
# largest_prime = 2
# candidate = 3
# sum = 0
# while largest_prime < 2000000
# # The smallest_factor mehtod was defined for use in problem Three
# 	if candidate == smallest_factor(candidate)
# 		primes.push candidate
# 		sum += candidate
# 	end
# 	candidate += 1
# 	largest_prime = primes.last
# end
# puts sum - primes.last

# ########################## Problem Sixteen
# digits = (2**1000).to_s.split("")
# sum = 0
# digits.each { |digit| sum += digit.to_i }
# puts sum

# ########################## Problem Twenty-Five
# i,j,k = 0,1,1
# count = 1
# until k.to_s.size >= 1000
# 	k = i+j
# 	i, j = j, k
# 	count += 1
# end
# puts count

# ########################## Problem Sixty-Three
# start = Time.now
# count = 0
# 1.upto(9) do |num|
# 	1.upto(22) do |exp|
# 		if (num**exp).to_s.size == exp
# 			count += 1
# 		end
# 	end
# end
# puts count
# puts Time.now - start

# ########################## Problem Twenty
# fact = (1..100).inject(1) { |factorial, num| factorial*num }
# b = fact.to_s.split('').inject(0) { |sum, char| sum + char.to_i }
# puts b

# ########################## Problem Twenty-One
def divisors(num)
	# returns an array containing all of the proper divisors, including duplicates i.e. divisors(9) = [1,3,3]
	divs = []
	1.upto(Math.sqrt(num).floor) do |candidate|
		if num%candidate == 0
			divs << candidate
			divs << num/candidate unless candidate == 1
		end
	end
	divs
end
def distinct_divisors(num)
	#returns the number of distinct divisors for num, including 1 and num
	count = 0
	sqrt = Math.sqrt(num)
	1.upto(sqrt) do |candidate|
		if num%candidate == 0
			unless candidate == sqrt
				count += 2
			else
				count += 1
			end
		end
	end
	count
end
def sum_of_divisors(num)
	divisors(num).inject(0) { |sum,divisor| sum + divisor }
end
# amicables = []
# 1.upto(10000) do |num|
# 	test = sum_of_divisors(num)
# 	if sum_of_divisors(test) == num && test != num
# 		amicables << num
# 	end
# end
# puts amicables.inject(0) { |sum,num| sum+num }

# ########################## Problem Forty-Seven
def prime_divisors(number)
	s = Set.new
	until number == 1
		f = smallest_factor(number)
		s << f
		number = number/f
	end
	return s
end
# test = 1
# in_a_row = 0
# while true
# 	if prime_divisors(test) == 4
# 		in_a_row += 1
# 		if in_a_row == 4
# 			break
# 		end
# 	else
# 		in_a_row = 0
# 	end
# 	test += 1
# end
# puts test

# ########################## Problem One-Hundred-Twenty-Five
# max = 10**7
# nums = Set.new
# 1.upto(max) do |start|
# 	sum = start**2
# 	counter = start + 1
# 	until sum > max
# 		sum += counter**2
# 		counter += 1
# 		if sum.to_s.reverse == sum.to_s && sum < max
# 			nums << sum
# 		end
# 	end
# end
# s = nums.inject(0) { |sum, entry| sum += entry }
# puts "There are #{nums.size} such numbers below #{max} and their sum is #{s}"

# ########################## Problem One-Hundred-Seventy-Nine (Terrible) runtime: ~4 hours
# count = 0
# prev_count = 1
# 1.upto(10**1 - 1) do |test|
# 	next_count = distinct_divisors(test + 1)
# 	if prev_count == next_count
# 		count += 1
# 	end
# 	prev_count = next_count
# end
# puts ''
# puts count

# ########################## Problem One-Hundred-Seventy-Nine (Revised) runtime: ~90 seconds
# max = 10**5
# divs = [0] * max
# 1.upto(max) do |num|
# 	i = 1
# 	index = num
# 	while index < max
# 		divs[index] += 1
# 		i += 1
# 		index = i*num
# 	end
# end
# count = 0
# divs.each_with_index do |divisors, index|
# 	if divisors == divs[index+1]
# 		count += 1
# 	end
# end
# puts count


















puts Time.now - timer_start
