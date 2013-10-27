digits = (2**1000).to_s.split("")
puts digits.inject(0) { |sum, digit| sum += digit.to_i }
