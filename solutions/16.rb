digits = (2**1000).to_s.split("").map {|num| num.to_i}
puts digits.reduce(:+)
