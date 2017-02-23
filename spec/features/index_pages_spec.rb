require 'rails_helper'

describe 'meals path' do
  it 'will add a meal', js: true do
    user = FactoryGirl.create(:user)
    food = FactoryGirl.create(:food)
    login_as(user)
    visit root_path
    fill_in 'Weight', :with => "250"
    fill_in 'Calorie allowance', :with => 2500
    click_on 'Update User'
    fill_in 'Servings', :with => 2
    click_on 'Create Meal'
    expect(page).to have_content('200 calories')
  end
end
