class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :description 
end
