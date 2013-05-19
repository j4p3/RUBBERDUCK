require 'spec_helper'

describe "Itinerary pages" do
	subject { page }

	describe "home" do 
		before { visit root_path }
		it { should have_selector('title', text: 'Rubberduck') }
	end

	describe "show" do
		areas = ['hong_kong_island', 'kowloon', 'new_territories']

	    areas.each do |area|
			let(:place) { FactoryGirl.create(:place, area: area) }
	    	before 	{ visit '/' + area }
			it { should have_selector('title', text: 'Rubberduck') }
			it { should have_selector('h1'), text: place.name }
	    end
	end

	describe "submit" do
		it { should have_selector('h1'), text: "Success" }
	end
end