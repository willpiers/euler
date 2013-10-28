# ########################## Problem Twenty
factorial = (1..100).inject(1) { |factorial, num| factorial*num }
b = factorial.to_s.split('').inject(0) { |sum, char| sum + char.to_i }
puts b
