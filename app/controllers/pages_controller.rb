class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @user = current_user
    @total_cal_gained = Meal.total_cal_gained(@user.id)
    @total_cal_burned = Workout.total_cal_burned(@user.id)
  end

end
