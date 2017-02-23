class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :food
  validates :user_id, :food_id, :servings, :cal_gained, :presence => true

  def meal_calc
    current_food_cal = Food.find(self.food_id).cal_serving
    current_servings = self.servings
    current_food_cal * current_servings
  end

  def self.total_cal_gained(user_id)
    user = User.find(user_id)
    meals = user.meals
    totalMeal = 0
    meals.each do |meal|
      totalMeal += meal.cal_gained
    end
    return totalMeal
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

end
