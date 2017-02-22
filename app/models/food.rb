class Food < ActiveRecord::Base
  validates :name, :cal_serving, :presence => true
  has_many :meals
  has_many :users, through: :meals
end
