class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @meal = Meal.new
    @foods = Food.all
    @workout = Workout.new
    @exercises = Exercise.all
    @food_results = Food.search(params[:search])

    if current_user
      @user = current_user
      @total_cal_gained = Meal.total_cal_gained(@user.id)
      @total_cal_burned = Workout.total_cal_burned(@user.id)
    end

    if params[:search]
      @food_results = params[:search]==""? Food.all : Food.fuzzy_search(params[:search])
    end
  end

end
