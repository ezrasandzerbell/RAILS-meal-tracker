require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should have_many(:users).through(:meals) }
  it { should have_many(:meals) }
end
