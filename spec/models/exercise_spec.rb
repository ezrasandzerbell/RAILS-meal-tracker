require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it { should have_many(:users).through(:workouts) }
  it { should have_many(:workouts) }
  it { should validate_presence_of :description }
  it { should validate_presence_of :cal_min }
end
