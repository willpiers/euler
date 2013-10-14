require_relative '../core_ext/integer'
require_relative '../euler_methods'
include EulerMethods

num = 1
next_integer = 2
while EulerMethods.distinct_divisors(num).count < 500
	num += next_integer
	next_integer += 1
end
puts num
