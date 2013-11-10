require_relative '../core_ext/integer'

amicables = []
1.upto(10000) do |num|
	test = num.sum_of_divisors
	if test.sum_of_divisors == num && test != num
		amicables << num
	end
end
puts amicables.inject(0) { |sum,num| sum+num }

