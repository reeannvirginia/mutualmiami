class AddPlaidTokenToDonors < ActiveRecord::Migration[5.1]
  def change
    add_column :donors, :plaid_access_token, :string
    add_column :donors, :plaid_public_token, :string
  end
end
