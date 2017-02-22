require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:exercises).through(:workouts) }
  it { should have_many(:workouts) }
end
