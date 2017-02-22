require 'rails_helper'

RSpec.describe Meal, type: :model do
  it { should belong_to :user }
  it { should belong_to :food }
end
