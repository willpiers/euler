palindromes = []
for x in (100...999)
  for y in (100...999)
    test = (x*y).to_s
    palindromes << test.to_i if test == test.reverse
  end
end
puts palindromes.sort.last
