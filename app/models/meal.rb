class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :food
  validates :user_id, :food_id, :servings, :cal_gained, :presence => true

  def meal_calc
    current_food_cal = Food.find(self.food_id).cal_serving
    current_servings = self.servings
    current_food_cal * current_servings
  end
end
