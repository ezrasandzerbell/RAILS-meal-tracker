class Exercise < ActiveRecord::Base
  validates :cal_min, :description, :presence => true
  has_many :workouts
  has_many :users, through: :workouts
end
