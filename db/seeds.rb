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

# add students in DB

Student.find_each(&:destroy!)

Student.create!(name: 'Anna Thuleau')

335.times do
  Student.create!(
    name: Faker::Name.unique.name
  )
end

# add choices in DB

Choice.find_each(&:destroy!)

City.order("nb_seats DESC").all.each do |city|
  city.wishes.each_with_index do |wish, ind|
    # next if wish.zero?

    until wish.zero?

      students = Student.left_outer_joins(:choices)
      selected_students = students.where(choices: { id: nil }).or(students.where.not(id: Choice.where(rank: ind).select(:student_id)).where.not(id: Choice.where(city: city).select(:student_id)))
      # https://stackoverflow.com/questions/49347632/rails-query-join-with-where-not-doesnt-work

      selected_student = selected_students.select { |student| student.choices.length < 6 }.sample
      new_choice = Choice.create!(
        city: city,
        student: selected_student,
        rank: ind
      )
      selected_student.save!
      wish -= 1
      city.save!
    end
  end
end
