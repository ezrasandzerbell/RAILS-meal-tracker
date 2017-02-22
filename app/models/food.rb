class Food < ActiveRecord::Base
  validates :name, :presence => true
  has_many :meals
  has_many :users, through: :meals
end
