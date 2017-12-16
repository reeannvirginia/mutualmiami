class AddGoalToFunds < ActiveRecord::Migration[5.1]
  def change
    add_column :funds, :goal, :integer
  end
end
