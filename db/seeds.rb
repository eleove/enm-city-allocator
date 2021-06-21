require 'csv'
require 'faker'

City.all.destroy_all

source_file = "/Users/eleonore/Documents/Code/enm-city-allocator/db/enm_cities_seats.csv"

CSV.foreach(source_file) do |row|
	City.create(
		name: row[1],
		nb_seats: row[2]
		)
end

Student.all.destroy_all

Student.create(name: "Anna Thuleau")

335.times {
	Student.create!(
	name: Faker::Name.unique.name
	)
}
