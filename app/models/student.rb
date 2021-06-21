class Student < ApplicationRecord
  belongs_to :city, optional: true
  has_many :choices # max 6, how to put a validation for this condition?
  # role will be set with cancancan
end
