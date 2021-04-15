class User < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
 
  has_one_attached :avatar
  has_secure_password
  validates :username, presence: true
  validates :password, :presence => { :on => :create}
end
