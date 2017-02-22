require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it { should have_many(:users).through(:workouts) }
  it { should have_many(:workouts) }
end
