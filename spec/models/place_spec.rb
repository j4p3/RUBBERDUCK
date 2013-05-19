require 'spec_helper'

describe Place do
	before do
		@place = Place.new(name: "Good Lab", desc: "where minds & actions meet", address: "Hong Kong", lat: 2452345.0, long: 324523.0)
	end

	subject { @place }

	it { should respond_to(:name) }
	it { should respond_to(:desc) }
	it { should respond_to(:address) }
	it { should respond_to(:lat) }
	it { should respond_to(:long) }

	it { should be_valid }

	describe "accessible attributes" do
	end
end