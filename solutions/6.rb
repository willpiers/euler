sum_of_squares = (1..100).inject(0) { |sum, term| sum + term**2 }

square_of_sum = (1..100).inject(:+)**2
# square_of_sum = 0
# (1..100).each do |a|
# 	square_of_sum += a
# end
# square_of_sum = square_of_sum**2
puts square_of_sum - sum_of_squares
