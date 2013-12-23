input = File.expand_path('../names.txt', File.dirname(__FILE__))
File.open input, 'r' do |file|
  name_list = file.to_a.first
  names = name_list.split(',').sort
  letter_values = {}
  ('A'..'Z').each_with_index do |letter, index|
    letter_values[letter] = index + 1
  end

  sum = 0
  names.each_with_index do |name, i|
    value = name.split('').inject(0) do |sum,letter|
      sum += letter_values[letter].to_i
    end
    value *= (i+1)
    sum += value
  end
  puts sum
end
