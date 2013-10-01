module EulerMethods
	def smallest_factor(number)
		sqrt = Math.sqrt(number).ceil
		2.upto(sqrt) do |factor|
			if number % factor == 0
				return factor
			end
		end
		return number
	end
end
