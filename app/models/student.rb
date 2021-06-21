class Student < ApplicationRecord
  belongs_to :city, optional: true
  has_many :choices
  # role will be set with cancancan
end
