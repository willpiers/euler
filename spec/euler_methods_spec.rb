require_relative '../euler_methods'
include EulerMethods


describe EulerMethods do
	describe '::smallest_factor' do
		context 'when given an integer greater than 1' do
			it 'returns the smallest prime factor' do
				expect(smallest_factor(50)).to eq 2
			end

			context 'and is prime' do
				it 'returns the argument itself' do
					expect(smallest_factor(7)).to eq 7
				end
			end
		end
		context "when given 1" do
		  it "returns 1" do
		    expect(smallest_factor(1)).to eq 1
		  end
		end
		context "when given a negative integer" do
		  it "returns nothing" do
		  	expect(smallest_factor(-100)).to be nil
		  end
		end
	end
end
