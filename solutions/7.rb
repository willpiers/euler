prime_count = 0
candidate = 1
while prime_count < 10001
  candidate += 1
  if candidate.least_factor == candidate
    prime_count += 1
  end
end
puts candidate
