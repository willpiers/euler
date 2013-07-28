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

# ########################## Problem Eight
# number = ''
# File.open 'thousand_digits.txt', 'r' do |f|
# 	while line = f.gets
# 		number << line
# 	end
# end
# largest_product = 1
# index = 0
# until index == number.length - 4
# 	prod = number[index..(index+4)].split('').map { |d| d.to_i }.reduce :*
# 	if prod > largest_product
# 		largest_product = prod
# 	end
# 	index += 1
# end
# puts largest_product

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

# ########################## Problem Twelve
# num = 1
# next_integer = 2
# while distinct_divisors(num) < 500
# 	num += next_integer
# 	next_integer += 1
# end
# puts num

# ########################## Problem Thirteen
# new_number_array = []
# File.open 'numbers.txt', 'r' do |f|
# 	while line = f.gets
# 		new_number_array << line[0..15].to_i
# 	end
# end

# sum = new_number_array.inject(0) { |sum,e| sum += e }
# puts sum.to_s[0..9]

# ########################## Problem Sixteen
# digits = (2**1000).to_s.split("")
# sum = 0
# digits.each { |digit| sum += digit.to_i }
# puts sum

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

# ########################## Problem Twenty-Two
# File.open 'names.txt', 'r' do |f|
# 	string_rep = f.to_a.first
# 	names = string_rep.split(',').sort
# 	letter_values = {}
# 	('A'..'Z').each_with_index do |letter, index|
# 		letter_values[letter] = index + 1
# 	end

# 	sum = 0
# 	names.each_with_index do |name, i|
# 		value = name.split('').inject(0) do |sum,letter|
# 			sum += letter_values[letter].to_i
# 		end
# 		value *= (i+1)
# 		sum += value
# 	end
# 	puts sum
# end

# ########################## Problem Twenty-Five
# i,j,k = 0,1,1
# count = 1
# until k.to_s.size >= 1000
# 	k = i+j
# 	i, j = j, k
# 	count += 1
# end
# puts count

# ########################## Problem Thirty-Four
class Integer
	def fact
		(1..self).inject(1) { |f,n| f*n }
	end
	def is_prime?
		return true if smallest_factor(self) == self
		false
	end
	# this next method is for problem 46
	def primes
		return [] if self == 0
		return 'Fuck you, man' if self < 0
		p = [2]; test = 3
		until p.length == self
			p << test if smallest_factor(test) == test
			test += 2
		end
		p
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
# 	if test.to_s.split('').inject(0) { |sum, e| sum += e.to_i.fact } == test
# 		nums << test
# 	else
# 		drought += 1
# 	end
# 	test += 1
# end
# puts nums.inject(0) { |sum, e| sum += e }

# ########################## Problem Thirty-Five
# primes_below_one_million = 78500.primes
# circular_prime_count = 0

# primes_below_one_million.each do |prime|
# 	break if prime >= 1000000
# 	digits = prime.to_s.split('')

# 	digits.length.times do |times|
# 		new_number = digits.rotate.join.to_i
# 		break unless new_number.is_prime?
# 		if times == (digits.length - 1)
# 			circular_prime_count += 1
# 		end
# 		digits = digits.rotate
# 	end
# end
# puts circular_prime_count

# ########################## Problem Thirty-Six
# palindromes_in_both_bases = []

# 1.upto 1000000 do |num|
# 	if num.to_s == num.to_s.reverse && num.to_binary.to_s == num.to_binary.to_s.reverse
# 		palindromes_in_both_bases << num
# 	end
# end

# puts palindromes_in_both_bases.reduce(:+)

# ########################## Problem Forty-Six
# 	for the first 500 numbers
# 	take the number's square and double it.
# 	add each prime to it and call that number x
# 	increase the entry in the numbers array corresponding to x by 1
# 	at the end, any number in the numbers array that still has a zero entry is a counter
# 	example to goldbach's other theorem (conjecture).

# bound = 10000; primes = 1000.primes; numbers = [0] * (bound)
# (1..bound).each do |n|
# 	x = 2*(n**2)
# 	primes.each { |p| numbers[(p + x)] += 1 unless p+x > bound-1 }
# end

# numbers.each_with_index do |num, index|
# 	if index.odd? && num == 0 && smallest_factor(index) != index
# 		puts "#{index}"
# 		break
# 	end
# end

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

# ########################## Problem Forty-Eight
# sum_mod = 0
# 1.upto 1000 do |num|
# 	sum_mod += num**num % 10**11
# end
# puts sum_mod % 10**10

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

# ########################## Problem Ninety-Two  -- this takes about 25 minutes
# there is a method, Array#permutations, that could greatly reduce the time on this problem. for any number that arrives at 89, all permutations will also arrive at 89

# nums_arriving_at_89 = [89]
# (2..10000000).each do |number|
# 	n = number
# 	until n == 1
# 		if n == 89
# 			nums_arriving_at_89 << number
# 			break
# 		else
# 			n = n.to_s.split('').inject(0) { |sum,digit| sum += (digit.to_i)**2 }
# 		end
# 	end
# end
# puts nums_arriving_at_89.length

# ########################## Problem Ninety-Seven
# result = 28433
# 7830457.times do |i|
# 	result = result*2 % 10000000000
# end
# puts result + 1

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
# 1.upto(10**5 - 1) do |test|
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


nothing important













puts Time.now - timer_start
