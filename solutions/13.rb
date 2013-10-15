long_numbers = []
input = File.expand_path('../numbers.txt', File.dirname(__FILE__))
File.open input, 'r' do |f|
	while line = f.gets
		long_numbers << line[0..15].to_i
	end
end

sum = long_numbers.inject(0) { |sum,e| sum += e }
puts sum.to_s[0..9]
