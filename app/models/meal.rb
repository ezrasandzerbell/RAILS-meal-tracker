class Meal < ApplicationRecord
  belongs_to :users
  belongs_to :food 
end
