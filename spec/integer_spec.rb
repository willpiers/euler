require_relative '../core_ext/integer'

describe Integer do
	describe '#least_factor' do
		context 'when given an integer greater than 1' do
			it 'returns the smallest prime factor' do
				expect(50.least_factor).to eq 2
			end

			context 'and is prime' do
				it 'returns the argument itself' do
					expect(7.least_factor).to eq 7
				end
			end
		end
		context "when given 1" do
		  it 'returns 1' do
		    expect(1.least_factor).to eq 1
		  end
		end
		context 'when given a negative integer' do
		  it 'returns nothing' do
		  	expect(-100.least_factor).to be nil
		  end
		end
	end

	describe '#prime_divisors' do
		it 'returns an object of class Array' do
		  expect(50.prime_divisors).to be_an Array
		end

		context 'when handed a prime number' do
		  it 'returns the prime itself' do
		    expect(11.prime_divisors).to eq [11]
		  end
		end

		context 'when given a number which is divisible by the square of a prime' do
			it 'only includes that prime one time' do
			  expect(49.prime_divisors).to eq [7]
			end
		end

		context 'when given 1 or 0' do
		  it 'returns an empty array' do
		    expect(1.prime_divisors).to eq []
		    expect(0.prime_divisors).to eq []
		  end
		end
	end

	describe '#digits' do
		it 'returns an Array' do
		  expect(50.digits).to be_an Array
		end

		it 'returns an Array with as many entries as the number is long' do
		  expect(50.digits.length).to eq 2
		  expect(100.digits.length).to eq 3
		end

		it "returns a list of the digits in the number" do
		  expect(2734.digits).to eq [2,7,3,4]
		end
	end

	describe '#divisors' do
		it 'returns and Array' do
			expect(50.divisors).to be_an Array
		end

		it 'returns a list of distinct divisors' do
		  expect(9.divisors.sort).to eq [1,3]
		end
	end

	describe '#sum_of_divisors' do
		it 'returns an integer' do
		  expect(10.sum_of_divisors).to be_an Integer
		end

		it 'return the sum of the (proper) divisors of a number' do
		  expect(20.sum_of_divisors).to eq 22
		end
	end
end
