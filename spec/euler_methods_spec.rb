require 'set'
require_relative '../euler_methods'
include EulerMethods

describe EulerMethods do
	describe '.primes_under' do
		it 'returns an object of class Array' do
			expect(EulerMethods.primes_under(10)).to be_a Array
		end

		it 'returns the list of primes under the argument' do
			expect(EulerMethods.primes_under(10)).to eq [2,3,5,7]
		end
	end

	describe ".distinct_divisors" do
	  it "returns an object of class Array" do
	    expect(EulerMethods.distinct_divisors(10)).to be_an Set
	  end

	  it "doesn't care about the sign of the integer" do
	    expect(EulerMethods.distinct_divisors(50)).to eq EulerMethods.distinct_divisors(-50)
	  end

	  context "when given an integer not equal to zero" do
	    it "returns the distinct divisors" do
	    	expect(EulerMethods.distinct_divisors(10)).to eq Set.new([1,2,5,10])
	    end

	    it "doesn't count an divisors twice" do
	    	# 12 is 2*2*3
	      expect(EulerMethods.distinct_divisors(12)).to eq Set.new([1,2,3,4,6,12])
	    end
	  end

	  context "when given 0" do
	    it "returns the empty array" do
	      expect(EulerMethods.distinct_divisors(0)).to eq Set.new()
	    end
	  end
	end
end
