# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :city, optional: true
  has_many :choices, dependent: :destroy

  validates :choices, length: { maximum: 6 }

  # role will be set with cancancan
end
