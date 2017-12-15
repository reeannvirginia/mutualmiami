class CreateFundsOrganizationsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :funds_organizations, id: false do |t|
      t.belongs_to :fund, index: true
      t.belongs_to :organization, index: true
    end
  end
end


## id: false
