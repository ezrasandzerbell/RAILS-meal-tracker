class AddCalsRemainingColToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cal_rem, :integer
  end
end
