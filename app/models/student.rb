class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  validates :name, presence: true
  validates :name, uniqueness: true 
   has_one_attached :avatar
end
