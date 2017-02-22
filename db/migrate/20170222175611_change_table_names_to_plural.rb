class ChangeTableNamesToPlural < ActiveRecord::Migration[5.0]
  def change
    rename_table :workout, :workouts
    rename_table :meal, :meals
    rename_table :exercise, :exercises
    rename_table :food, :foods
  end
end
