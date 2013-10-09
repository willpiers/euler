require_relative '../euler_methods'
include EulerMethods

describe EulerMethods do
	describe '.primes_under' do
		it 'returns an object of class Array' do
			expect(primes_under(10)).to be_a Array
		end

		it 'returns the list of primes under the argument' do
			expect(primes_under(10)).to eq [2,3,5,7]
		end
	end
end
