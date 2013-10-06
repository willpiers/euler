require_relative '../euler_methods'

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
		  it "returns 1" do
		    expect(1.least_factor).to eq 1
		  end
		end
		context "when given a negative integer" do
		  it "returns nothing" do
		  	expect(-100.least_factor).to be nil
		  end
		end
	end

	describe '#prime_divisors' do
		it "returns an object of class Array" do
		  expect(50.prime_divisors.class).to eq Array
		end

		context "when handed a prime number" do
		  it "returns the prime itself" do
		    expect(11.prime_divisors).to eq [11]
		  end
		end

		context "when given a number which is divisible by the square of a prime" do
			it "only includes that prime one time" do
			  expect(49.prime_divisors).to eq [7]
			end
		end

		context "when given 1 or 0" do
		  it "should return an empty array" do
		    expect(1.prime_divisors).to eq []
		    expect(0.prime_divisors).to eq []
		  end
		end
	end
end
