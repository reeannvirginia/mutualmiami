class CreateOrganizationFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_funds do |t|
      t.belongs_to :organization, foreign_key: true
      t.belongs_to :fund, foreign_key: true

      t.timestamps
    end
  end
end
