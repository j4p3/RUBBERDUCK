namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_places
	end
end

def make_places
	6.times do |n|
		name = Faker::Company.name
		desc = Faker::Lorem.sentences
		address = Faker::Address.street_name
		lat = 22.3000
		long = 114.1667
		area = "kowloon"
		Place.create!(name: name, desc: desc, address: address, lat: lat, long: long, area: area)
	end
	6.times do |n|
		name = Faker::Company.name
		desc = Faker::Lorem.sentences
		address = Faker::Address.street_name
		lat = 22.3000
		long = 114.1667
		area = "new_territories"
		Place.create!(name: name, desc: desc, address: address, lat: lat, long: long, area: area)
	end
	6.times do |n|
		name = Faker::Company.name
		desc = Faker::Lorem.sentences
		address = Faker::Address.street_name
		lat = 22.3000
		long = 114.1667
		area = "hong_kong_island"
		Place.create!(name: name, desc: desc, address: address, lat: lat, long: long, area: area)
	end

end