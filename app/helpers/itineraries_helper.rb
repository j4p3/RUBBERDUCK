module ItinerariesHelper
	def format(area)
		case area
		when "hong_kong_island"
			"Hong Kong Island"
		when "kowloon"
			"Kowloon"
		when "new_territories"
			"New Territories"
		end
	end
end
