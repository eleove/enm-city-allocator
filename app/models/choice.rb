# frozen_string_literal: true

class Choice < ApplicationRecord
  belongs_to :student
  belongs_to :city
end
