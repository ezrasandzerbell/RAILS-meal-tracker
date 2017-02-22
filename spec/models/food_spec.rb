require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should have_many(:users).through(:meals) }
  it { should have_many(:meals) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cal_serving }
end
