require_relative '../core_ext/integer'
require_relative '../euler_methods'

# primes = [2]
# largest_prime = 2
# candidate = 3
# sum = 0
# while largest_prime < 2000000
# # The least_factor mehtod was defined for use in problem Three
#   if candidate == candidate.least_factor
#     primes.push candidate
#     sum += candidate
#   end
#   candidate += 1
#   largest_prime = primes.last
# end
# puts sum - primes.last

puts EulerMethods.primes_under(2000000).reduce(:+)
