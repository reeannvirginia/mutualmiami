class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.float :amount
      t.belongs_to :donor, foreign_key: true

      t.timestamps
    end
  end
end
