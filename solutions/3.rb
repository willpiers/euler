require_relative '../euler_methods'
include EulerMethods

big_number = 600851475143
prime_factors = []
product_of_primes = 1

loop do
	prime_factors << smallest_factor(big_number/product_of_primes)
	product_of_primes = prime_factors.inject(1, :*)

	break if product_of_primes == big_number
end
puts prime_factors.last
