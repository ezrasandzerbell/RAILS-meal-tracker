class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :food

  validates :user_id, :food_id, :servings, :cal_gained, :presence => true
end
