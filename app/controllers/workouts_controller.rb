class WorkoutsController < ApplicationController
  def index
    @user = current_user
    @workouts = @user.workouts
  end

  def new
    @user = current_user
    @workout = Workout.new
    @exercises = Exercise.all
  end

  def create
    @user = current_user
    @workout = @user.workouts.new(workout_params)
    @workout.cal_burned = @workout.workout_calc
    if @workout.save
      @user.cal_rem = @user.cal_rem + @workout.cal_burned
      @user.save
      redirect_to user_workouts_path
    else
      render :new
    end
  end

private
  def workout_params
    params.require(:workout).permit(:user_id, :exercise_id, :minutes, :cal_burned)
  end
end
