module EulerMethods
	def primes_under prime_limit
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
end
