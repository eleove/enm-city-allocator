# frozen_string_literal: true

require 'csv'
require 'faker'

# add cities in DB

City.find_each(&:destroy!)

source_file = '/Users/eleonore/Documents/Code/enm-city-allocator/db/jurisdictions_and_choices.csv'

CSV.foreach(source_file, headers: true) do |row|
  City.create!(
    name: row[0],
    nb_seats: row[1],
    wishes: [row[2], row[3], row[4], row[5], row[6], row[7]].map(&:to_i)
  )
end

# # add students in DB

Student.find_each(&:destroy!)

Student.create!(name: 'Anna Thuleau')

335.times do
  Student.create!(
    name: Faker::Name.unique.name
  )
end

# add choices in DB

Choice.find_each(&:destroy!)

# itérer sur les voeux, trouver 1 student qui n'a pas ce voeu là (à ce rank) et passer au voeu suivant
# use find_by! instead of find_by

# Student.all.each do |student|
# 	rank = 1
# 	6.times {
# 		n = rand(100)
# 		if n < 20
# 			random_city = City.find_by name: 'PARIS'
# 		elsif n < 40
# 			random_city = City.find_by name: 'BORDEAUX'
# 		else
# 			random_city = City.all.sample
# 		end
# 		Choice.create!(
# 			city: random_city,
# 			student: student,
# 			rank: rank)
# 		rank += 1
# 	}
# end
