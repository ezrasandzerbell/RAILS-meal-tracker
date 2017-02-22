class Workout < ActiveRecord::Base
  validates :user_id, :exercise_id, :minutes, :cal_burned, :presence => true
  belongs_to :user
  belongs_to :exercise

  def workout_calc
    current_exercise_cal = Exercise.find(self.exercise_id).cal_min
    current_minutes = self.minutes
    current_exercise_cal * current_minutes
  end
end
