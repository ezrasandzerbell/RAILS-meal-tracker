require 'rails_helper'

RSpec.describe Meal, type: :model do
  it { should belong_to :user }
  it { should belong_to :food }
  it { should validate_presence_of :servings }
  it { should validate_presence_of :cal_gained }
  it { should validate_presence_of :food_id }
  it { should validate_presence_of :user_id }
end
