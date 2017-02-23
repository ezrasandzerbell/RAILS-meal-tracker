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
      @total_cal_gained = Meal.total_cal_gained(@user.id)
      flash[:notice] = "Meal successfully added!"
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render layout: false }
      end
    else
      render :new
    end
  end


private
  def meal_params
    params.require(:meal).permit(:user_id, :food_id, :servings)
  end
end
