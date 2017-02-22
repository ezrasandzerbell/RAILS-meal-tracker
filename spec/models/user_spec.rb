require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:exercises).through(:workouts) }
  it { should have_many(:workouts) }
  it { should validate_presence_of :weight }
  it { should validate_presence_of :calorie_allowance }
end
