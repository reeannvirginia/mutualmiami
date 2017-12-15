class RemoveIndexFromDonor < ActiveRecord::Migration[5.1]
  def change
    remove_column :donors, :index
  end
end
