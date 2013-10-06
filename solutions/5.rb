# answer = 1
# 1.upto(20) do |num|
# 	answer = num.lcm(answer)
# end
# puts answer


# puts (1..20).inject(1) { |result,n| result.lcm n }


puts (1..20).reduce(:lcm)
