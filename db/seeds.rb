# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


food_list = [
  [ "Egg", 70 ],
  [ "Pizza", 285 ],
  [ "Protein Shake", 200 ],
  [ "Brownies", 350 ],
  [ "Hamburger", 320],
  [ "Cheeseburger", 360],
  [ "Oatmeal", 100],
  [ "Salad", 120],
  [ "Broccoli", 30],
  [ "Peanut Butter", 190]
]

food_list.each do |food_item, amount|
  Food.create( name: food_item, cal_serving: amount )
end

exercise_list = [
  ["Aerobics", 5],
  ["Stretching", 5],
  ["Calisthenics",	5],
  ["Aerobics", 7],
  ["Stairs", 7],
  ["Teaching", 7],
  ["Lifting", 7],
  ["Bicycling", 9],
  ["Rowing", 9]
]

exercise_list.each do |routine, calories|
  Exercise.create(description: routine, cal_min: calories )
end
