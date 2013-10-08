# since a + b + c = 1000 we can use c = 1000 - (a+b)
1.upto(500) do |a|
	(a+1).upto(500) do |b|
		c = 1000 - (a+b)
		if ( a**2 + b**2 == c**2 ) && a + b + c == 1000
			puts "#{a} + #{b} + #{c} = 1000 and is a pythagorean triple"
			puts "#{a}*#{b}*#{c} = #{a*b*c}"
			break
		end
	end
end
