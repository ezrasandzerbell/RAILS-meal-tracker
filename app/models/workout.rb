class Workout < ActiveRecord::Base
  validates :user_id, :exercise_id, :minutes, :cal_burned, :presence => true
  belongs_to :user
  belongs_to :exercise

  def workout_calc
    current_exercise_cal = Exercise.find(self.exercise_id).cal_min
    current_minutes = self.minutes
    current_exercise_cal * current_minutes
  end

  def self.total_cal_burned(user_id)
    user = User.find(user_id)
    workouts = user.workouts
    totalWorkout = 0
    workouts.each do |workout|
      totalWorkout += workout.cal_burned
    end
    totalWorkout
  end
end
