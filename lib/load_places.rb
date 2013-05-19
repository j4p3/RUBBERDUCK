#!/usr/bin/env ruby

# Load source attraction csv into table
# If the record does not exist, add; otherwise update/skip
require 'csv'

# csv for place seeds into "place_seeds" table
def load_places()
  title_row = true
  CSV.foreach('db/kowloon.csv') do |row|
    if title_row
      title_row = false
      next
    end
    p row
    place = Place.new
    place.time_slot = row[0]
    place.name = row[1]
    place.category = row[2]
    place.display_type = row[3]
    place.display_price = row[4]
    place.desc = row[5]
    place.image_name = row[6]
    place.lat = row[7]
    place.long = row[8]
    place.area = 'Kowloon'
    place.address = 'TBD'
    place.save!
  end
end
