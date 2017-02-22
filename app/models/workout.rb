class Workout < ActiveRecord::Base
  validates :user_id, :exercise_id, :minutes, :cal_burned, :presence => true
  belongs_to :user
  belongs_to :exercise
end
