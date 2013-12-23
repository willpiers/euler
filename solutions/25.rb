i,j,k = 0,1,1
count = 1
until k.to_s.length >= 1000
  k = i+j
  i, j = j, k
  count += 1
end
puts count
