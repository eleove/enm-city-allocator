require 'csv'
require 'faker'

# add cities in DB

City.all.destroy_all

source_file = "/Users/eleonore/Documents/Code/enm-city-allocator/db/enm_cities_seats.csv"

CSV.foreach(source_file, headers: true) do |row|
	City.create(
		name: row[1],
		nb_seats: row[2]
		)
end

# add students in DB

Student.all.destroy_all

Student.create(name: "Anna Thuleau")

335.times {
	Student.create!(
	name: Faker::Name.unique.name
	)
}

# add choices in DB

Choice.all.destroy_all

Student.all.each do |student|
	rank = 1
	6.times {
		n = rand(100)
		if n < 20
			random_city = City.find_by name: 'PARIS (PI)'
		elsif n < 40
			random_city = City.find_by name: 'BORDEAUX (PI)'
		else
			random_city = City.all.sample(100)[50]
		end
		Choice.create!(
			city: random_city, 
			student: student,
			rank: rank)
		rank += 1
	}
end