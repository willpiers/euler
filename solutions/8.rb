number = ''
input = File.expand_path('../thousand_digits.txt', File.dirname(__FILE__))
File.open input, 'r' do |f|
	while line = f.gets
		number << line
	end
end
largest_product = 1
index = 0
until index == number.length - 4
	product = number[index..(index+4)].each_char.map { |d| d.to_i }.reduce :*
	largest_product = product if product > largest_product
	index += 1
end
puts largest_product
