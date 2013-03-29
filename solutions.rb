require 'set'
timer_start = Time.now
# ########################### Problem One
# sum = 0
# 1000.times do |number|
# 	if number % 3 == 0 || number % 5 == 0
# 		sum += number
# 	end
# end
# puts sum

# ############################ Problem Two
# fib = [1,2]
# n = 1
# while fib[n] + fib[n-1] <= 4000000
# 	fib.push(fib[n] + fib[n-1])
# 	n += 1
# end
# sum = 0
# fib.each do |test|
# 	if test % 2 == 0
# 		sum += test
# 	end
# end
# puts sum

# ########################## Problem Three
# test = 600851475143
def smallest_factor(number)
	sqrt = Math.sqrt(number).ceil
	2.upto(sqrt) do |factor|
		if number % factor == 0
			return factor
		end
	end
	return number
end
# puts smallest_factor(test)
# puts test/smallest_factor(test)
# test = test/smallest_factor(test)
# puts smallest_factor(test)
# puts test/smallest_factor(test)
# test = test/smallest_factor(test)
# puts smallest_factor(test)
# puts test/smallest_factor(test)
# test = test/smallest_factor(test)
# puts smallest_factor(test)
# puts test/smallest_factor(test)

# ########################## Problem Four
# array = []
# 100.times do |num1|
# 	x = 1000 - num1
# 	100.times do |num2|
# 		y = 1000 - num2
# 		test = (x*y).to_s
# 		if test == test.reverse
# 		array.push test
# 		end
# 	end
# end
# puts array.sort.last
# answer = 906609

# ########################## Problem Five
# answer = 1
# 1.upto(20) do |num|
# 	answer = num.lcm(answer)
# end
# puts answer
# better solution ==> num = (1..20).inject(1) { |result,n| result.lcm n }

# ########################## Problem Six
# sum_of_squares = (1..100).inject(0) { |sum, term| sum + term**2 }
# square_of_sum = 0
# (1..100).each do |a|
# 	square_of_sum += a
# end
# square_of_sum = square_of_sum**2
# puts square_of_sum - sum_of_squares

# ########################## Problem Seven
# prime_count = 0
# candidate = 2
# while prime_count < 10001
# 	if smallest_factor(candidate) == candidate
# 		prime_count += 1
# 	end
# 	candidate += 1
# end
# puts (candidate - 1)

# ########################## Problem Nine
# triplets = []
# 500.times do |a|
# 	(a+1).upto(500) do |b|
# 		(b+1).upto(500) do |c|
# 			if ( a**2 + b**2 == c**2 ) && a + b + c == 1000
# 				puts "#{a} + #{b} + #{c} = 1000 and is a pythagorean triple"
# 				puts "#{a} * #{b} * #{c} = #{a*b*c}"
# 				break
# 			end
# 		end
# 	end
# end

# ########################## Problem Ten
# primes = [2]
# largest_prime = 2
# candidate = 3
# sum = 0
# while largest_prime < 2000000
# # The smallest_factor mehtod was defined for use in problem Three
# 	if candidate == smallest_factor(candidate)
# 		primes.push candidate
# 		sum += candidate
# 	end
# 	candidate += 1
# 	largest_prime = primes.last
# end
# puts sum - primes.last

# ########################## Problem Twelve
# num = 1
# next_integer = 2
# while distinct_divisors(num) < 500
# 	num += next_integer
# 	next_integer += 1
# end
# puts num

# ########################## Problem Thirteen
# This should abolutely not be here. we should be reading in from numbers.txt
# a = [
# 37107287533902102798797998220837590246510135740250,
# 46376937677490009712648124896970078050417018260538,
# 74324986199524741059474233309513058123726617309629,
# 91942213363574161572522430563301811072406154908250,
# 23067588207539346171171980310421047513778063246676,
# 89261670696623633820136378418383684178734361726757,
# 28112879812849979408065481931592621691275889832738,
# 44274228917432520321923589422876796487670272189318,
# 47451445736001306439091167216856844588711603153276,
# 70386486105843025439939619828917593665686757934951,
# 62176457141856560629502157223196586755079324193331,
# 64906352462741904929101432445813822663347944758178,
# 92575867718337217661963751590579239728245598838407,
# 58203565325359399008402633568948830189458628227828,
# 80181199384826282014278194139940567587151170094390,
# 35398664372827112653829987240784473053190104293586,
# 86515506006295864861532075273371959191420517255829,
# 71693888707715466499115593487603532921714970056938,
# 54370070576826684624621495650076471787294438377604,
# 53282654108756828443191190634694037855217779295145,
# 36123272525000296071075082563815656710885258350721,
# 45876576172410976447339110607218265236877223636045,
# 17423706905851860660448207621209813287860733969412,
# 81142660418086830619328460811191061556940512689692,
# 51934325451728388641918047049293215058642563049483,
# 62467221648435076201727918039944693004732956340691,
# 15732444386908125794514089057706229429197107928209,
# 55037687525678773091862540744969844508330393682126,
# 18336384825330154686196124348767681297534375946515,
# 80386287592878490201521685554828717201219257766954,
# 78182833757993103614740356856449095527097864797581,
# 16726320100436897842553539920931837441497806860984,
# 48403098129077791799088218795327364475675590848030,
# 87086987551392711854517078544161852424320693150332,
# 59959406895756536782107074926966537676326235447210,
# 69793950679652694742597709739166693763042633987085,
# 41052684708299085211399427365734116182760315001271,
# 65378607361501080857009149939512557028198746004375,
# 35829035317434717326932123578154982629742552737307,
# 94953759765105305946966067683156574377167401875275,
# 88902802571733229619176668713819931811048770190271,
# 25267680276078003013678680992525463401061632866526,
# 36270218540497705585629946580636237993140746255962,
# 24074486908231174977792365466257246923322810917141,
# 91430288197103288597806669760892938638285025333403,
# 34413065578016127815921815005561868836468420090470,
# 23053081172816430487623791969842487255036638784583,
# 11487696932154902810424020138335124462181441773470,
# 63783299490636259666498587618221225225512486764533,
# 67720186971698544312419572409913959008952310058822,
# 95548255300263520781532296796249481641953868218774,
# 76085327132285723110424803456124867697064507995236,
# 37774242535411291684276865538926205024910326572967,
# 23701913275725675285653248258265463092207058596522,
# 29798860272258331913126375147341994889534765745501,
# 18495701454879288984856827726077713721403798879715,
# 38298203783031473527721580348144513491373226651381,
# 34829543829199918180278916522431027392251122869539,
# 40957953066405232632538044100059654939159879593635,
# 29746152185502371307642255121183693803580388584903,
# 41698116222072977186158236678424689157993532961922,
# 62467957194401269043877107275048102390895523597457,
# 23189706772547915061505504953922979530901129967519,
# 86188088225875314529584099251203829009407770775672,
# 11306739708304724483816533873502340845647058077308,
# 82959174767140363198008187129011875491310547126581,
# 97623331044818386269515456334926366572897563400500,
# 42846280183517070527831839425882145521227251250327,
# 55121603546981200581762165212827652751691296897789,
# 32238195734329339946437501907836945765883352399886,
# 75506164965184775180738168837861091527357929701337,
# 62177842752192623401942399639168044983993173312731,
# 32924185707147349566916674687634660915035914677504,
# 99518671430235219628894890102423325116913619626622,
# 73267460800591547471830798392868535206946944540724,
# 76841822524674417161514036427982273348055556214818,
# 97142617910342598647204516893989422179826088076852,
# 87783646182799346313767754307809363333018982642090,
# 10848802521674670883215120185883543223812876952786,
# 71329612474782464538636993009049310363619763878039,
# 62184073572399794223406235393808339651327408011116,
# 66627891981488087797941876876144230030984490851411,
# 60661826293682836764744779239180335110989069790714,
# 85786944089552990653640447425576083659976645795096,
# 66024396409905389607120198219976047599490197230297,
# 64913982680032973156037120041377903785566085089252,
# 16730939319872750275468906903707539413042652315011,
# 94809377245048795150954100921645863754710598436791,
# 78639167021187492431995700641917969777599028300699,
# 15368713711936614952811305876380278410754449733078,
# 40789923115535562561142322423255033685442488917353,
# 44889911501440648020369068063960672322193204149535,
# 41503128880339536053299340368006977710650566631954,
# 81234880673210146739058568557934581403627822703280,
# 82616570773948327592232845941706525094512325230608,
# 22918802058777319719839450180888072429661980811197,
# 77158542502016545090413245809786882778948721859617,
# 72107838435069186155435662884062257473692284509516,
# 20849603980134001723930671666823555245252804609722,
# 53503534226472524250874054075591789781264330331690
# ]
# b = a.map {|e| e.to_s[0..15].to_i }
# c = b.inject(0) { |sum,e| sum += e }
# puts c.to_s[0..9]

# ########################## Problem Sixteen
# digits = (2**1000).to_s.split("")
# sum = 0
# digits.each { |digit| sum += digit.to_i }
# puts sum

# ########################## Problem Twenty
# fact = (1..100).inject(1) { |factorial, num| factorial*num }
# b = fact.to_s.split('').inject(0) { |sum, char| sum + char.to_i }
# puts b

# ########################## Problem Twenty-One
def divisors(num)
	# returns an array containing all of the proper divisors, including duplicates i.e. divisors(9) = [1,3,3]
	divs = []
	1.upto(Math.sqrt(num).floor) do |candidate|
		if num%candidate == 0
			divs << candidate
			divs << num/candidate unless candidate == 1
		end
	end
	divs
end
def distinct_divisors(num)
	#returns the number of distinct divisors for num, including 1 and num
	count = 0
	sqrt = Math.sqrt(num)
	1.upto(sqrt) do |candidate|
		if num%candidate == 0
			unless candidate == sqrt
				count += 2
			else
				count += 1
			end
		end
	end
	count
end
def sum_of_divisors(num)
	divisors(num).inject(0) { |sum,divisor| sum + divisor }
end
# amicables = []
# 1.upto(10000) do |num|
# 	test = sum_of_divisors(num)
# 	if sum_of_divisors(test) == num && test != num
# 		amicables << num
# 	end
# end
# puts amicables.inject(0) { |sum,num| sum+num }

# ########################## Problem Twenty-Five
# i,j,k = 0,1,1
# count = 1
# until k.to_s.size >= 1000
# 	k = i+j
# 	i, j = j, k
# 	count += 1
# end
# puts count

# ########################## Problem Thirty-Four
class Integer
	def fact
		(1..self).inject(1) { |f,n| f*n }
	end
	# this next method is for problem 46
	def primes
		p = [2]; test = 3
		until p.length == self
			p << test if smallest_factor(test) == test
			test += 2
		end
		p
	end
end

# drought = 0; nums = []; test = 3;
# while drought < 50000
# 	if test.to_s.split('').inject(0) { |sum, e| sum += e.to_i.fact } == test
# 		nums << test
# 	else
# 		drought += 1
# 	end
# 	test += 1
# end
# puts nums.inject(0) { |sum, e| sum += e }

# ########################## Problem Forty-Six
# 	for the first 500 numbers
# 	take the number's square and double it.
# 	add each prime to it and call that number x
# 	increase the entry in the numbers array corresponding to x by 1
# 	at the end, any number in the numbers array that still has a zero entry is a counter
# 	example to goldbach's other theorem (conjecture).

# bound = 10000; primes = 1000.primes; numbers = [0] * (bound)
# (1..bound).each do |n|
# 	x = 2*(n**2)
# 	primes.each { |p| numbers[(p + x)] += 1 unless p+x > bound-1 }
# end

# numbers.each_with_index do |num, index|
# 	if index.odd? && num == 0 && smallest_factor(index) != index
# 		puts "#{index}"
# 		break
# 	end
# end

# ########################## Problem Forty-Seven
def prime_divisors(number)
	s = Set.new
	until number == 1
		f = smallest_factor(number)
		s << f
		number = number/f
	end
	return s
end
# test = 1
# in_a_row = 0
# while true
# 	if prime_divisors(test) == 4
# 		in_a_row += 1
# 		if in_a_row == 4
# 			break
# 		end
# 	else
# 		in_a_row = 0
# 	end
# 	test += 1
# end
# puts test

# ########################## Problem Sixty-Three
# start = Time.now
# count = 0
# 1.upto(9) do |num|
# 	1.upto(22) do |exp|
# 		if (num**exp).to_s.size == exp
# 			count += 1
# 		end
# 	end
# end
# puts count
# puts Time.now - start

# ########################## Problem One-Hundred-Twenty-Five
# max = 10**7
# nums = Set.new
# 1.upto(max) do |start|
# 	sum = start**2
# 	counter = start + 1
# 	until sum > max
# 		sum += counter**2
# 		counter += 1
# 		if sum.to_s.reverse == sum.to_s && sum < max
# 			nums << sum
# 		end
# 	end
# end
# s = nums.inject(0) { |sum, entry| sum += entry }
# puts "There are #{nums.size} such numbers below #{max} and their sum is #{s}"

# ########################## Problem One-Hundred-Seventy-Nine (Terrible) runtime: ~4 hours
# count = 0
# prev_count = 1
# 1.upto(10**1 - 1) do |test|
# 	next_count = distinct_divisors(test + 1)
# 	if prev_count == next_count
# 		count += 1
# 	end
# 	prev_count = next_count
# end
# puts ''
# puts count

# ########################## Problem One-Hundred-Seventy-Nine (Revised) runtime: ~90 seconds
# max = 10**5
# divs = [0] * max
# 1.upto(max) do |num|
# 	i = 1
# 	index = num
# 	while index < max
# 		divs[index] += 1
# 		i += 1
# 		index = i*num
# 	end
# end
# count = 0
# divs.each_with_index do |divisors, index|
# 	if divisors == divs[index+1]
# 		count += 1
# 	end
# end
# puts count




























puts Time.now - timer_start
