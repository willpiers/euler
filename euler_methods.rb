module EulerMethods
	def self.primes_under prime_limit
		primes = []
		numbers = [0]*(prime_limit+1)
		sqrt = Math.sqrt(prime_limit).ceil
		2.upto(sqrt) do |divisor|
			iteration = 2
			while iteration*divisor <= prime_limit
				index = divisor*iteration
				numbers[index] += 1
				iteration += 1
			end
		end
		numbers.map.with_index do |divisors, index|
			numbers[index] == 0 ? index : nil
		end.compact[2..-1]
	end

	def self.distinct_divisors number
		number = (-1)*number if number < 0
		divisors = Set.new
		sqrt = Math.sqrt(number)
		1.upto(sqrt) do |candidate|
			if number % candidate == 0
				unless candidate == sqrt
					divisors << candidate
					divisors << number/candidate
				else
					divisors << candidate
				end
			end
		end
		divisors
	end
end
