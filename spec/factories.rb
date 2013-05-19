FactoryGirl.define do
	factory :place do
		sequence(:name) { |n| "Place #{n}" }
		sequence(:desc) { |n| "Description number #{n} for place number #{n}" }
		address "Hong Kong"
		lat 22.3000
		long 114.1667
		area "kowloon"
	end

end