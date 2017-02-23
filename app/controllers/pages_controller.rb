class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    if params[:search]
      @food_results = params[:search]==""? Food.all : Food.fuzzy_search(params[:search]).order(:name).paginate(:page => params[:page])
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render layout: false }
      end
    else
      @food_results = Food.all
    end
    @meal = Meal.new
    @foods = Food.all
    @workout = Workout.new
    @exercises = Exercise.all

    if current_user
      @user = current_user
      @total_cal_gained = Meal.total_cal_gained(@user.id)
      @total_cal_burned = Workout.total_cal_burned(@user.id)
    end
  end


end
