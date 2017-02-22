class MealsController < ApplicationController
  def index
    @user = current_user
    @meals = @user.meals
  end

  def new
    @user = current_user
    @meal = Meal.new
    @foods = Food.all
  end

  def create
    @user = current_user
    @meal = @user.meals.new(meal_params)
    @meal.cal_gained = @meal.meal_calc
    if @meal.save
      @user.cal_rem = @user.cal_rem - @meal.cal_gained
      @user.save
      redirect_to user_meals_path
    else
      render :new
    end
  end

private
  def meal_params
    params.require(:meal).permit(:user_id, :food_id, :servings)
  end
end
