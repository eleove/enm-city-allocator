# frozen_string_literal: true

class City < ApplicationRecord
  has_many :students
  has_many :choices, dependent: :destroy

  serialize :wishes, Array
end
