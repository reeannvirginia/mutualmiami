class AddFirstNameToDonorLogins < ActiveRecord::Migration[5.1]
  def change
    add_column :donor_logins, :first_name, :string
    add_column :donor_logins, :last_name, :string
    add_column :donor_logins, :phone_number, :string
    add_column :donor_logins, :plaid_access_token, :string
    add_column :donor_logins, :plaid_public_token, :string
  end
end
