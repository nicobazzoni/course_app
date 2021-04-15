class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  validates :name, presence: true
  validates :name, uniqueness: true 
  validates :password, :presence => { :on => :create}
   has_one_attached :avatar
   has_secure_password
end
