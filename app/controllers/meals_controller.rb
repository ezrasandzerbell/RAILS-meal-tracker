class MealsController < ApplicationController
  def index
  end

  def new
    @user = current_user
    @meal = Meal.new
    @foods = Food.all
  end

  def create
  end

private
  def meal_params
    params.require(:meal).permit(:user_id, :food_id, :servings, :cal_gained)
  end
end
