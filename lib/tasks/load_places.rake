desc 'Add sample itinerary records from csv
    Usage: rake load_places'
task :load_places => :environment do |task|
  require 'load_places.rb'
  load_places
end
