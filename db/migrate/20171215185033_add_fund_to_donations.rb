class AddFundToDonations < ActiveRecord::Migration[5.1]
  def change
    add_reference :donations, :fund, foreign_key: true
  end
end
