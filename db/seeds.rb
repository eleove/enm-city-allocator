require 'csv'

City.all.destroy_all

source_file = "/Users/eleonore/Documents/Code/enm-city-allocator/db/enm_cities_seats.csv"

CSV.foreach(source_file) do |row|
	City.create(
		name: row[1],
		nb_seats: row[2]
		)
end