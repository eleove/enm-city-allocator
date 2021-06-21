class City < ApplicationRecord
	has_many :students
	has_many :choices
end
