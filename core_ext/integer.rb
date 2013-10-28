require 'set'

class Integer
	def least_factor
		return nil if self < 0
		number = self
		sqrt = Math.sqrt(number).ceil
		2.upto(sqrt) do |factor|
			if number % factor == 0
				return factor
			end
		end
		return number
	end

	def prime_divisors
		number = self
		return [] if number <= 1
		divisors = Set.new
		until number == 1
			prime_divisor = number.least_factor
			divisors << prime_divisor
			number = number/prime_divisor
		end
		divisors.to_a
	end

	def digits
		self.to_s.split('').map {|n| n.to_i}
	end
end
