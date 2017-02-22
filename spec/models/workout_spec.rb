require 'rails_helper'

RSpec.describe Workout, type: :model do
  it { should belong_to :user}
  it { should belong_to :exercise }
  it { should validate_presence_of :minutes }
  it { should validate_presence_of :cal_burned }
  it { should validate_presence_of :exercise_id }
  it { should validate_presence_of :user_id }
end
