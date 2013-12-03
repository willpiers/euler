fib = [1,2]
n = 1
while fib[n] + fib[n-1] <= 4000000
  fib.push(fib[n] + fib[n-1])
  n += 1
end
sum = 0
fib.each do |test|
  if test % 2 == 0
    sum += test
  end
end
puts sum
