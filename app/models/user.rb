class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :weight, :calorie_allowance, :presence => true
  has_many :workouts
  has_many :exercises, through: :workouts
end
