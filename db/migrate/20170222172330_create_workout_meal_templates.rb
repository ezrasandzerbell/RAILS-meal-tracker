class CreateWorkoutMealTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :workout do |t|
      t.integer :minutes
      t.integer :cal_burned
      t.integer :exercise_id
      t.integer :user_id
    end
    create_table :meal do |t|
      t.integer :servings
      t.integer :cal_gained
      t.integer :food_id
      t.integer :user_id
    end
    create_table :exercise do |t|
      t.string :description
      t.integer :cal_min
    end
    create_table :food do |t|
      t.string :name
      t.integer :cal_serving
    end
  end
end
