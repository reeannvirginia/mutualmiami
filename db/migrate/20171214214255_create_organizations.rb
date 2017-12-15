class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :category
      t.string :address
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
